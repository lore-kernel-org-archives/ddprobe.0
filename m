Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4BF492AE74
	for <ddprobe@lists.linux.dev>; Thu,  5 Jun 2025 05:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749102594; cv=none; b=GbSyaeuueB4YKhdvrzEonzm3bjOlN5pVAZeKX8JA0mc8oGxtil5LXHTBS1OE+MHo/qZezYVbVMeqwiVgiCdhIl5r9qss45ZcRhooPtWIQJ/SmVq+rDp+a4ytqcU+XzVFSu8S8xwIScWwTl3b725KSJ1HV7m7Htf+kfsR6E7qJok=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749102594; c=relaxed/simple;
	bh=/3cFbECDJpip8sbpytnaCZs27bF5n6UDgovEz51lcjk=;
	h=To:Subject:From:Message-Id:Date; b=TpSnv8vc1U4Eg7DX7my2n7vP5X4wvO7VzBMKVQEuXuz7sOpQC3g+4uTV86IlrdNnEsVqVY/2q56U4gHV45WYacGQIRraN3+tXAs8FOoqVxiXSj3toGnj/8m8IGB3uISAOCXfVoSDRrTcy0m7waERJHBoYCZhXzwVfjiY2ZusPFM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EEurBc4t; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EEurBc4t"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0EF3C4CEEB
	for <ddprobe@lists.linux.dev>; Thu,  5 Jun 2025 05:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749102593;
	bh=/3cFbECDJpip8sbpytnaCZs27bF5n6UDgovEz51lcjk=;
	h=To:Subject:From:Date:From;
	b=EEurBc4tMH/3FA3/uDIRRfSRQBNwje0RlviVUIqOQXl/di0UodjF3GbL18BLl4bBp
	 bmmTv++G5zlJuLg57PV7ze84Ny7jqAN8YfeuoXcvBZl3ypjxSh6QLbsD1X/vSDB2oJ
	 aFNVM/OHfH3h9wdTiWAeqezWjZEaWYqYnR9FPGVcCdyNG00bHwohVxOGL4+3p37kR/
	 A16Z54NY4lztc59s74x2I0gCAq7B4okYW9Juc/y85IDhgHDJkfcP6WbjB9QpIkIn/s
	 aDToMCfdmn94Y6w5zWp4Yov1DFI2fRnOM4SGdSa+DUbLRDUCWRsOtF970xPFydj1Ap
	 ejH0vpU93YJOw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C9BCC5B543
	for <ddprobe@lists.linux.dev>; Thu,  5 Jun 2025 05:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174910259360.23545.4895261037470879638.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0f0e9a1d0eb9b4f0f1a13d6f19d57e50edcdc3d1b897c116e55c7a28c6740b32
Date: Thu, 05 Jun 2025 05:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749102593
