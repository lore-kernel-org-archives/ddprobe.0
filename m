Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 471FA126C03
	for <ddprobe@lists.linux.dev>; Tue,  4 Mar 2025 03:28:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741058934; cv=none; b=Vh4NRJC3lrFHnYp7I+JDeQnWQEcB3zmB1U59QD0eyGf/f4rhHmW2uW6b0R2abNiJmEHVQTSTTtV2oTt+WJLQ7CpLcz2Q1q6MeonctOGA4gl+L2W1sHx8CMbn90PmcQf5JcBNF7g3EJ003UaW2frqdkdyf2hnq4fEcEwKiS2HpDc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741058934; c=relaxed/simple;
	bh=OiK4kDixMUzaLi74i8Dhr9D4UsVBeZOdvWiGrcNxExs=;
	h=To:Subject:From:Message-Id:Date; b=VlqUOvobXCaAfl0ggrSuK08be3l1aHaEKl+dtB17BnplYDclrzHAYxO19e11IHq2IsHxHQ3ofuxECkjOtCEAA6bF3gee2Ql1s6brxVcllQngyt4hf+hNapARDD1jPBiYZ/Q6Si8MDK5BuLw/Ww59vPDaTX1NocbtlzWnxz5Aa5g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TbmJt9gZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TbmJt9gZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BABE3C4CEE4
	for <ddprobe@lists.linux.dev>; Tue,  4 Mar 2025 03:28:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741058933;
	bh=OiK4kDixMUzaLi74i8Dhr9D4UsVBeZOdvWiGrcNxExs=;
	h=To:Subject:From:Date:From;
	b=TbmJt9gZsF9j2YMBDYQpnMQLVIhjDMU7ijZHEOmQcLAUUOOjN2milPc23Szt5e+n5
	 IkMWPdJyOWuDiUuPOCzRfRp0FwUoIpWYgu/E8MwnCQea5HRLa0uKfJ/WEOhiYlEPeI
	 3lg8i4UZxk4JYnxkXLAzTqGTbTnxOWx4WIAkoSlCVoFYaM5P+R79muNXDGjslL20oI
	 MiJaW5cpWTbNNvjmb19di+/S7/9DK2vvHGwHSaS1p+97PTtViiydbuAek3txy2X41i
	 3PxgX0alwRXk2/u+vleQMYletHn+fAH0idoom1dKusn9wZmypB6bRaTz+wj3+33Q2W
	 WRbeEXRnztO3w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9F6D1C021B8
	for <ddprobe@lists.linux.dev>; Tue,  4 Mar 2025 03:28:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174105893363.9506.16798644427990899982.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e62bc416ab32f5eeabcadec12eece05e5e14bb330c6f289f77c4179d7917c9a2
Date: Tue, 04 Mar 2025 03:28:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741058933
