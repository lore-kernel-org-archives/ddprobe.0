Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B68131A636
	for <ddprobe@lists.linux.dev>; Thu, 10 Nov 2022 20:10:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6C767C433D6
	for <ddprobe@lists.linux.dev>; Thu, 10 Nov 2022 20:10:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668111054;
	bh=bmhM2gbHSULmKDRE782Um2nWvBY6eFsgopOHw0c0Pd8=;
	h=To:Subject:From:Date:From;
	b=EJUDAQNEoUZB/ECtgRux83RWwhTMq0S4cXaSJ2NlY+1ekofH3wDSiL5QDaNLBXvSv
	 WoV0MciJuucCuYN28+JK9TYwCxuE8UDYAwimJX5L+3KZaHt3J8QGFhCe0R8A8WWm+0
	 8gZNBzRkHQlsQbEjXvqnx7skxU72lWvx6WhWg1NYVLqvR5uZH9QhrNS1RoY79//5SV
	 DfJ2F9r89kwP9GBdEXEas7grjkcr3Av1QGa+rymBJoymF2ItNP+6g9AtbgKXXO/BiH
	 bOoHAZcKk149FEvXHDNbn08aKUJhKHUhCAySQJG+3YqNifcCmefn2vv3QLt/IblxoF
	 AeRLb0ADj0PCw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 55BEDC4332F
	for <ddprobe@lists.linux.dev>; Thu, 10 Nov 2022 20:10:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166811105434.19773.1766288854722914086.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 433f0c4c0eb9b43dadf95de9c6c5d1a804de34f02fc376a97056bbb5fe0322f4
Date: Thu, 10 Nov 2022 20:10:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668111054
