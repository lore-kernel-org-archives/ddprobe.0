Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 462961E49F
	for <ddprobe@lists.linux.dev>; Sat,  1 Mar 2025 11:28:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740828534; cv=none; b=sjgs7B4Gb+QMAEvFJykZpGDeZhWouXp4VA4rKZlFLhthG5YPzOJ+H7jP8DtO7OhnYHo5T2cZCjLJLuiQ1ZboYdmHps0JLpUWIk4jW22JIOlTuWGdby0m88WIrT613JerO83ZZuBXFcz3HH12Q+31pLBR9DrC7Nxf65XoqWyCPfE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740828534; c=relaxed/simple;
	bh=2VKMHfEiDGQyjcifHL+wKCmEBEA3jMWGIeJDT4Tq5yY=;
	h=To:Subject:From:Message-Id:Date; b=MZBz7xByrhAp5bcpnNS8jnMou2SXGmTCfrXNiqI8f3Fd8x756uUm1HEOn+mtr9FDyDkCOAc0RPtFTbe2GpN2e6DR4ShlQ6u+88QiZ0LyKO6qiaHMOaPUQpTTcV/SkJeEPig8Psf/oa+C+T3PRLTpR+L6/6rYwj9F1JwiIsvFuqU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HcEj4RfL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HcEj4RfL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE60DC4CEDD
	for <ddprobe@lists.linux.dev>; Sat,  1 Mar 2025 11:28:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1740828533;
	bh=2VKMHfEiDGQyjcifHL+wKCmEBEA3jMWGIeJDT4Tq5yY=;
	h=To:Subject:From:Date:From;
	b=HcEj4RfL2TYr6zI1ciFgmFyT2HLHrXAEZA40pehUDajMfNWfOG9TAb8X7K81vCwzw
	 oJ6loJiWR/pK3mtX2lZwdz1CCB2GiS1/tq9JcE0EdzB+cM6wI3lWKvOlPC5XxmAJGT
	 vHgaSqbByH7KftgzLfoFPsHqK+bQ9kCdtiLuR54FyoetPC3ZLcTS1H5Qmnrb+lLf3S
	 v61si1EbCmLqsv/kQ4ZRzoJfjUz4EoyrPOw83xQyeNwknNUOhTgFhY+tuDv19rrmDd
	 WyuYwzlKxGOlNE0PT4gD4Cof+txC2kzm6+rdzBObGP0udWskJKwbtDOyk+V9V2bFeG
	 SIfV55g2weK+w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98A5DC021B8
	for <ddprobe@lists.linux.dev>; Sat,  1 Mar 2025 11:28:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174082853360.20935.2216256716899353621.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 17e1c2878c32f12606d531424c27248755bc90be164a602870587d183505ca05
Date: Sat, 01 Mar 2025 11:28:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1740828533
