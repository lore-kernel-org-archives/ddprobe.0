Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5A4AD8828
	for <ddprobe@lists.linux.dev>; Sun,  9 Jul 2023 18:37:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5FCCC433C8
	for <ddprobe@lists.linux.dev>; Sun,  9 Jul 2023 18:37:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688927828;
	bh=uxxSELK/q4tRZ+zjopvAjcYWmfRdrwoGb70e73dM7ws=;
	h=To:Subject:From:Date:From;
	b=iKWWru65Vc/VwWk0OTfQVkW9XAREmJ3MphKiLS6VvNdEM4UdmMf+LHZJ0Yb7sjGhR
	 jioHKU0bGzAh4EvtAcAjMHqqCeIQTdH9XWAg+lyt8Vxle/5yaWUUflrGTNpNNOVURl
	 qVBOGKZ2M1cIIKsAxtTUc7OjimkcjIlU3TipU3VMH1/ZxipafGmDIdm/SIvFmywMtk
	 +1+pPTCRP8VFU8XzFM9zekaLPa5qtBg4zF6aLYf+xLQOb4++cNNFwy0rbzRmHw4EHg
	 +74XX8pd0+7cgspq/u954HFX3gmoK8Uilq04h2FKpeE7hUk9e1LBlykIj+LqlKC7oX
	 UeSs7tzfkqk4g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADBF1EB64DC
	for <ddprobe@lists.linux.dev>; Sun,  9 Jul 2023 18:37:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168892782870.19664.12930318631318032564.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a7f6741fca9f34994d9f03d09d300e42bc632f7d6b2e96bbb8bc2c2f14f8367a
Date: Sun, 09 Jul 2023 18:37:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1688927828
