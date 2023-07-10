Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 65A1114AAF
	for <ddprobe@lists.linux.dev>; Mon, 10 Jul 2023 22:37:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB165C433C7
	for <ddprobe@lists.linux.dev>; Mon, 10 Jul 2023 22:37:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1689028628;
	bh=vOtypKgv4r2Kkdj+Iku+wh+fEgAJgQyCWhYQpYJHdik=;
	h=To:Subject:From:Date:From;
	b=bHeM/jSZ8Fk+vv6kbv8XdAIS2Vqbur8YXymw0Vv6hoVvCF6uhPK3eyDc/VWDxhhlw
	 u8u09A39xHZctjdAB6GuFTaGlXy8m8VVQN8tLjWYsrws9yZnRNODRXAoVrgwBMCjQe
	 ieDBi+IVj9g7dlRcHJiSdP8IUIXT8h9fajEp2jVvpkCI+4u6gio9Dy10SdRG09x+qz
	 9IaInNMayVnh9j/eN4AmfGOAFowcOilbNnDvUJUkzMUk4ldu6fg+7Dgqa9+yxpK5vq
	 N2goG9It3v3JjrnZ+ehXJesrBwCYWYpmkWsUatp8DiQ68peUAFDjNQr/pQVJ0fvhgK
	 fihZEaya37GZQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAF79EB64D9
	for <ddprobe@lists.linux.dev>; Mon, 10 Jul 2023 22:37:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168902862869.31949.11460195480056042176.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fd254e061e6f20f8a0e3f8b9fedfcdef886e35a93e14208fbda46256b7950949
Date: Mon, 10 Jul 2023 22:37:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1689028628
