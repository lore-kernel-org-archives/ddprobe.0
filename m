Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 738F917996
	for <ddprobe@lists.linux.dev>; Sun, 26 May 2024 14:24:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716733463; cv=none; b=IbCmqTTiAU/pA7Q4c1DgEYJfmeGRNndQMC7c77LRoH52HlSV9qoXUWUQa9t9l45VhXjEVU31zlC0srYMJ2Tk8IKoy8v9wZKapce1N78tkrhio4T8Ktmcyjf+jnAO25qRgC7uprhQ9DCAdzUZnajaDtFBcv78TB35SUvkNFi33cU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716733463; c=relaxed/simple;
	bh=Fz0rNb6QCuDb2BAlMxBn42K4tZdJVYE1AXD9AwaxhCc=;
	h=To:Subject:From:Message-Id:Date; b=bPZeemTyYnVyVm3lDwqyB3ZO6SpKj32ee2qwIrTshFZfNg3lwfLkecQTMlAppjXqHO8xYN8ZYGDTCBHK6gXeYwZD/UepThHF3/Eup6HRmXSkMu+jOnN2iUdu06x+Uvhq+a+hkN1QDfwSCulzDFfOBAb+2+oJ/tvjYRExCi2hco8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VPykaEjy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VPykaEjy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DD2E2C2BD10
	for <ddprobe@lists.linux.dev>; Sun, 26 May 2024 14:24:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716733462;
	bh=Fz0rNb6QCuDb2BAlMxBn42K4tZdJVYE1AXD9AwaxhCc=;
	h=To:Subject:From:Date:From;
	b=VPykaEjynxZ8oNj5ow6tsDcSsMgDXZYX9wNvhCLzTFzLQaAdh66hmGb50lkj8WrjL
	 70fLssYT+cs3TRU1BWktM4kBF6muVjhhEhEGHYYIiIvReWFzm6Ng1XIWUaqEg8HlzU
	 8P+TEwygxagJ8UjdhCFXZO9Mzp5Qjb6Hsg3/Fp5gZeBcY1DQYwhdqqresj9bu3gGDB
	 ZOpiKJvmeAhkHu6c5fykTe3YuM/puAx9eJgVWCfFEob5iG4Mbb76JbKqqPdArgIvbv
	 caodfhJBDyqz+Bj13iSOaNAJTFo9Ogmh3lzddAwGMx6tmTAyaSMMpsZ5G+Ufj5dsDd
	 IugwTBN0tQRew==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C5855C25B75
	for <ddprobe@lists.linux.dev>; Sun, 26 May 2024 14:24:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171673346278.6514.14727776278053645384.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4d518669ccad9c9e7f87121ab98bf2735bc54c44aaf8b9d1bec0293a5a45e6b9
Date: Sun, 26 May 2024 14:24:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716733462
