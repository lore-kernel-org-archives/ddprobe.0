Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4BA1828F3
	for <ddprobe@lists.linux.dev>; Sat, 11 May 2024 11:12:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715425943; cv=none; b=hJkYyQ+XnHBD0+XEpH2bZPXuBVCxL3FUZYJiDQzrdI61sKQEApKFD0oTtlQHOXjFScOJWH3SqsIaQEj6/wqLF0Ps9csC3CYDtsMbxrQ8aG8babi+upPa6XF+oJlBUt2gW1BRnGDPPPlo5/MXDyXLaqm2ev4EsxAHGub5apHV6EM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715425943; c=relaxed/simple;
	bh=AB5OAe4NViypEPVT5nPulRp5yeEkf8dZrGXqKb6uyGo=;
	h=To:Subject:From:Message-Id:Date; b=YBqL9/aBskdapSx3GrM4S4zo5fq41BmS9qBWULLvuvBn35zl5CNL38wY4Q4wQMuAyHaV4dTZYJiR5sdfvJ32yuYjeJbhBF4cSeUfQmWL4XA1fECsHPuqXY7niI3SQ4qWQQuByqCxZwPmhMHNLu/RLVweW8t0WgmhHMHEam/B2GE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IXRIgm8L; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IXRIgm8L"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D74FFC2BBFC
	for <ddprobe@lists.linux.dev>; Sat, 11 May 2024 11:12:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715425942;
	bh=AB5OAe4NViypEPVT5nPulRp5yeEkf8dZrGXqKb6uyGo=;
	h=To:Subject:From:Date:From;
	b=IXRIgm8LXXAgIOvmZHmkBGs5l2ZDp96lMorKLr+HeUpR1MyLfnG/3mP1cRWH/bNe8
	 8dbb9x+nm/yWVtZCLzyCRzi/3vmN7DKMsT1v0Wl3iKAYYH5Zc4Bklpeu2PHuafxoc+
	 F9kU6bhvjEra9G0TjwjtI7IlNjXGdDCHR/hkowwIv1XYff3a2IgycszbcU49dBoZrU
	 iDPF/QTv5GO+EepHTt2S/d4V7DWW3+IPF54GajNX3n8Pw3ly41pHxQnyU/rsgtiqlj
	 KXj/xYv3KYmeOxN98e17S+/QzoVbELTyHRQK7ILAq6XwJMB/iYqIWA6be3q6hzHSZE
	 n8Y9fRzPImS0Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C3AB5C04FFE
	for <ddprobe@lists.linux.dev>; Sat, 11 May 2024 11:12:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171542594279.10277.6084580708975904037.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0a729626d6b27765c63404699580de94e1ce181263320caa28748f4a0386689b
Date: Sat, 11 May 2024 11:12:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715425942
