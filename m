Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 228EB3224
	for <ddprobe@lists.linux.dev>; Mon, 23 Jan 2023 16:53:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DA462C433EF
	for <ddprobe@lists.linux.dev>; Mon, 23 Jan 2023 16:53:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1674492785;
	bh=ULi18w4FsZ01s92xSCdBAacpC/UjlJDeLbt/EGBm/4M=;
	h=To:Subject:From:Date:From;
	b=se0PLfxIM47oP7FfyHIyTbFsJaaMp0qq+uPcsej5s8D8KYS+B2B4fsbzNQ5AsY4Ob
	 USBEjcm6vT8kNYSAsLJOckTkQKF2/q66u93/wGrE53zRXNk2ZzROa3fovbuOcXIcR8
	 eGJ1GZ9ZMy+OFbIHlr5B4ogD47a7d7PblHBdyTHXaGUFou+sZ5/xMiW9i7VQi39yyW
	 xXBPmYRGVyLOtfZDF/4jH9BTR1EXjvkR3XaXZsr5/kUbAJUAzs7OwU2elAAxIjNq7h
	 0ctIddMshw6zsU4IUToZMSClNuql4SdisEokNjgFT/GfFa5/8xbnWzdzxMMtbZ2KKO
	 1mdhhlRWjY/pg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BC6F7C05027
	for <ddprobe@lists.linux.dev>; Mon, 23 Jan 2023 16:53:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167449278576.29803.11195286739282921738.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d42b08f27e19382acddbb36f1c4594cc9abf22c373752f3e7d9e8b79d3c8ec20
Date: Mon, 23 Jan 2023 16:53:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1674492785
