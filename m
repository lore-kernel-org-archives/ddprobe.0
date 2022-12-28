Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C7D59ED0
	for <ddprobe@lists.linux.dev>; Wed, 28 Dec 2022 08:11:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7E179C433EF
	for <ddprobe@lists.linux.dev>; Wed, 28 Dec 2022 08:11:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672215087;
	bh=vlDqnki0deTU+2dA24QS8oOw2A4RSxCxIM5T28aAuIs=;
	h=To:Subject:From:Date:From;
	b=F6UtUmoTY7/Sx573H0WvOwRUN3j+tDz6AkDUo6tOxq9yo11MPNZTYi7YyEYiEeNpn
	 ziwoFu1iH4//VK7cZLrPF+6rpRD9x9PWtpfDjsSllVTIzUTXT6ZwcJdx8a+NG53f5J
	 lOzFBvTZxwU7draoNvaGW8x9oSEiIf2ywPDYw7Kji3aOKgYTXiIF9pBKRE6tfSWhZC
	 GyD+um3Odg6IsMy+EBl/Z7ZWlkR9YCR9+9iVU7rGTKJKLruteuw1E6zzzs8KCLTh+l
	 7h4F0F+EgFPwq9FhPU+i7hBwcLCSNgKaWgBOnEJpJWRStPWvqef+rL3ebFDxxHOjpP
	 KOYC5GiSrN77w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 61F41C4332F
	for <ddprobe@lists.linux.dev>; Wed, 28 Dec 2022 08:11:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167221508739.23872.2500263164305543805.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0b1927922a0073ed1f50d8425af5b80bf4ee8b7258689a91ae153349f45782ed
Date: Wed, 28 Dec 2022 08:11:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672215087
