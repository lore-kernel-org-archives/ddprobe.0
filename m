Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A48E115C8A
	for <ddprobe@lists.linux.dev>; Mon,  5 Dec 2022 19:40:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6DD18C43470
	for <ddprobe@lists.linux.dev>; Mon,  5 Dec 2022 19:40:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670269254;
	bh=qyysT+TEUIlPt3DLGZrFkapTM9HaxOPPE9zWfCUFttg=;
	h=To:Subject:From:Date:From;
	b=frPO/X1A/rqRSDaiXL5JcrXN/QfdOjxGCm3kJOnaAR0J8A3jx/t3tiIypSwj2gbqL
	 9+eedWoKa588la88L6ZOp1QIlAXsLa2p2+Wnl+ts+sbWglALGHKw6esdCgRLIG9PpQ
	 5vmQphyCTieFw41VHpycBDvKniiyiK7G4UY9HAhWGiNHuMGK4F9O2sAVzpSO7jneOx
	 5nghxDjCoKSlqVWx8iJho8VP9yV2iLEhjnnqcsh6RcZq0+chLKchuhv0CEaxVagoxi
	 7Bm/T5He3/MPAAlXhxuWwNDDbLbcyaJpi9oL7xTw7WYx4EdkRajMowFFL4XWFRray5
	 jGBiFTufvcqZw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 56E0EC4332F
	for <ddprobe@lists.linux.dev>; Mon,  5 Dec 2022 19:40:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167026925434.3568.12119736557287918837.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 45913a328281eaef4bfee89cfef410fc435a7c073bbdd46c99cf66f5f5c99875
Date: Mon, 05 Dec 2022 19:40:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670269254
