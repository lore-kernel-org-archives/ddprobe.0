Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 49BF73603E0
	for <ddprobe@lists.linux.dev>; Sun, 20 Sep 2026 06:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789886434; cv=none; b=AvJTV/n/RqIeOPJPNbSGOw9S/BN+Vwf+Gk0k0XkykJqzmhF2ZiB3Xfj7GxPbhfx2EI/jV9xCLojDXmRCPzhWZzs8uqsxza7+QmfyeWvKG/itriHnMQYNnazagaNNOJrblzBeF6CwzVHAtIo/3y9UBal4gQSe6D4EVDEoWQMrm2E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789886434; c=relaxed/simple;
	bh=ymwcGYkTLXglNE+Bqh4fwyDcZ0b/NSfS2DOzOkg9Qk4=;
	h=To:Subject:From:Message-Id:Date; b=jvNVHYLZzr0a2wN9gikspJM95x5S8kOqLkIanT+b7hEbnznYmCjGzOjRWcRymDXCvhHrJp+XDAQPf1IoVIdcBNLYUHGkMF8R6hgq9kB0XemYwojar+6F14S5BH5w0oL7gEk1peAVZYMPOAKu5iaOT0GXNaYMHfqC2k0YiIyPXb4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BtI+Rxtn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BtI+Rxtn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D625CC2BCB3
	for <ddprobe@lists.linux.dev>; Sun, 20 Sep 2026 06:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789886433;
	bh=ymwcGYkTLXglNE+Bqh4fwyDcZ0b/NSfS2DOzOkg9Qk4=;
	h=To:Subject:From:Date:From;
	b=BtI+RxtnB6UtAwhra2Ri4JH7xYKYBgl8nnqp1PlrJpdyhgOasfI0urfT2M3XMiVx3
	 NvcPu8HSvgp1k8iMeRBXiwTlgianJ7/2gdP8u6wR3ZnjvSNR1DgeCxKP7U9AeITvkD
	 /Cu44pofj5/7Nk8tEk3d5yneVIdnpLBMDTMqOBcG35sRUFbZBVbbglWBmk1+xTgOp7
	 pjz8gq4upkKX0lOd2l3URtj2bfvhq4WuvLPVyFUfmehD4LA73xW7ryMtFbgvaqQFFX
	 ugP29EVMziSgnK5iO8dYgwwOwRI/kyUZnRC8kRGWtaktOjzSI4iu8tbBsQG12rVDB8
	 ornYnhmEK9tSA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2DD6C982CC
	for <ddprobe@lists.linux.dev>; Sun, 20 Sep 2026 06:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178988643369.9538.8581555645934551212.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4ea89080bf5790b15463ef5aae884ce9a56ce80a8283cd59c148dac93fe3bf60
Date: Sun, 20 Sep 2026 06:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789886433
