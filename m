Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EED53168BD
	for <ddprobe@lists.linux.dev>; Sat,  9 Dec 2023 18:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gfHgq2gE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 73DFBC433C7
	for <ddprobe@lists.linux.dev>; Sat,  9 Dec 2023 18:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1702148296;
	bh=u++AuXRpWL4QBdRn3U5Mtc0P2JurI0e0rPThRhYEO2k=;
	h=To:Subject:From:Date:From;
	b=gfHgq2gERHVDciD1anUduxXnxzB09gIFCkBEQ8Xh2CIvldYK+BW8kVJJUxNL79eIX
	 /thkHg6U0d9RiBART7AcZdYymv04Zp0JhWyqh9lWPr2zlt384x0h52MlOIgw9zsNVh
	 cjOXX+Qvi+zUQfibBSZGAJODV6YT6Sbcrvmz9gQvzS7HsuqGT4In6XrZ0jwgQMUES5
	 jQFAkw8swV8hkdP08WRIlMjhyjf49gdCAXi6uwIxxjBcUS0xFEwZUshBU3Hh1VopQo
	 YdPPB3xbZg0syyWUiY043f9vtpkaKtdtNfbFZO7+z25cfZbPULq9bGvSYXtNzBzdR6
	 rHtld621ct0yQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5B997C4167B
	for <ddprobe@lists.linux.dev>; Sat,  9 Dec 2023 18:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170214829636.20835.9870585611566528991.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 04962b2fdbb73532a2d0f07cf02d3c61cea9b642892997a52740088f54fbc72a
Date: Sat, 09 Dec 2023 18:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1702148296
