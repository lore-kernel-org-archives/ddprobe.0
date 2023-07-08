Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6719EA941
	for <ddprobe@lists.linux.dev>; Sat,  8 Jul 2023 19:47:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E0397C433C7
	for <ddprobe@lists.linux.dev>; Sat,  8 Jul 2023 19:47:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688845628;
	bh=Kw/MVcp8NvFLDHyXr9oZg2AxGOT2PSvSEF4hkXvYV7Q=;
	h=To:Subject:From:Date:From;
	b=Y1RsY3cpOttzfJyx1RRI2ATmlz2PrrShL8ueq7wATzJM3P+q5dVB9A+FKJojEx2qz
	 ESaCarr2+Tl+UQOWrd7WMYspZOx+ZvchOCXIosQFi/msS2koponsUyIiIojA4skHW9
	 zKFLVvJ4XtzUC2BlLOBLalgJ7ifWtNBYMD0OStU6wRBW5G+EkZZpF3ITNrmVjWvmc+
	 D+hei5A5YysUlf9fIy6SHtxtnhe+WUnrV7s6rjv4ov3vPWhk1XunKjbTZYHf7SA1L1
	 2sUqRg0ZxLEgGnf4v4vYpjLxfAEDrXXEaj5fa22x+hINJfryWWugD7mqZDUJGEFfVM
	 hPaHLBkMszW8g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B3CBFEB64DA
	for <ddprobe@lists.linux.dev>; Sat,  8 Jul 2023 19:47:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168884562869.25690.4419872708982083752.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e325e605685ee35968e06a0d660deab3239318e118a2b8b0b1bb761506c3d513
Date: Sat, 08 Jul 2023 19:47:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1688845628
