Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B76C53C2A
	for <ddprobe@lists.linux.dev>; Sun,  2 Oct 2022 18:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 74CBDC433C1
	for <ddprobe@lists.linux.dev>; Sun,  2 Oct 2022 18:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664734853;
	bh=Gt+TclPV8b03XolXxay2JmoAc/P1SknCMf5aWRnURos=;
	h=To:Subject:From:Date:From;
	b=XCnkAvbRMLsYdZeYR08+4anudcyxhvIc9Xd1NreIoE9myn5Qvi0iqkGhyaYUJyFZJ
	 ZRAkiksO/SjxjvcEdrTJOvfgXTXX25ysBydtbNeQVNXb2KOfXq2XwYOE0hBqAyiqPy
	 TrEZQC5+1SpuirReeFbQFBqpYX3eriuvwEjiGaiD/Tu2ivExG0+rT70xNAOfQpzzkq
	 XaQ4i2q27FWFE6kByqC/w6mgybbtgmoEevy3F/2OT8n7K96DzM+ygiTnWomB2QhHGk
	 ofDqD7OcmHaJN9QBFeXyoW/sC2z0CDgBNynoh8SIvb5WBNIxtwEWI7yExYVH5QSF82
	 1CgVY6WZ40nhA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 587BCC433F5
	for <ddprobe@lists.linux.dev>; Sun,  2 Oct 2022 18:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166473485332.8803.5596978651437267820.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 38fa55393a2da321ed4a62744f1699008ccc93a67f9522733efc74da5e10c65d
Date: Sun, 02 Oct 2022 18:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664734853
