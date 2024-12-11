Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C8CD22A7E2
	for <ddprobe@lists.linux.dev>; Wed, 11 Dec 2024 20:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733950554; cv=none; b=l+4ykhe6T7YWM1cKRHmVqUcQg4APEHSq0GWIU4i0EmHX4hzB0jNLAh35KCnf2JLvT82u08HmyGRh6GSpfHHeVJcNBuswD+AKTlmQzbUHpZgasmFXl4nJfUvLO3A6qPMgPcWv75da6/PrIo2/pG7u/lb/6y+1AnN85KBdT1uxPSo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733950554; c=relaxed/simple;
	bh=pDvoWxnPbGPG2MwVz0XwLaN3kkUvVjL0hr2/VJS1uCM=;
	h=To:Subject:From:Message-Id:Date; b=RMi5762Ajl1ee9rkT8yBO+Ihf+1cGoYudgd1Ixeol4kq5ktnACjz9xeh5tHPVPePKfp6L1XYf2W6YSN7SCIY1fgu6mh3BbcvvFgdoC+Ysb65o0l3mPNTyti+mGsZQW8YCBmPVzd9o7DJf+QhLbnzpCoCckYiigluWCZ4yZHOhM0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=H9Sd3vhj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="H9Sd3vhj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2BECC4CEDF
	for <ddprobe@lists.linux.dev>; Wed, 11 Dec 2024 20:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733950553;
	bh=pDvoWxnPbGPG2MwVz0XwLaN3kkUvVjL0hr2/VJS1uCM=;
	h=To:Subject:From:Date:From;
	b=H9Sd3vhjfy7UdlEuWOav2Ee6VhN9vfdzvXIEe1adNVYRDbtWRR175CF5nR8ZfL3ey
	 ZGdVuDDrJQhn384kL2mxb3XnyMkFrMwb48shVb5LNlVfxlXIm8x/ma2w4byOe7edcG
	 0AdPHEKfoXuqkOWnemwHZIKQO82FZ0EbJmEKOZg82HMhZ0vJVoA0RceXbLovOzaGeE
	 l0+my5ARXuRk1ltH4g4EwOWWZZielKXLmk1gilQXgaYbBLvwUwwOtTY8I+Ttz8Lp2k
	 MjfJU9AdzDIrAyivdVr6QFKjOfecvv7Snbehtww14F2tBJr2Va6Sw0Egz/KjyChP53
	 Lt9GkMI6dK3Pw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A140AE7717D
	for <ddprobe@lists.linux.dev>; Wed, 11 Dec 2024 20:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173395055364.25796.1747167101595560572.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c50c01cf22449e8007d1a33eadc879abc7c6848804b847e8fa0969af6c0104dd
Date: Wed, 11 Dec 2024 20:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1733950553
