Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DA8EC23B0
	for <ddprobe@lists.linux.dev>; Sat, 31 Dec 2022 07:21:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 85112C433EF
	for <ddprobe@lists.linux.dev>; Sat, 31 Dec 2022 07:21:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672471287;
	bh=NsAsJreOHQU79htG9oRJ+2Eg7WT9iV+CnhtRhlODIWs=;
	h=To:Subject:From:Date:From;
	b=JY+xEgLZ5dDU6HqZ+RpSd8g4h977tup66FhzL5cRWrrpWS++gv3D758DS29Cm+AiL
	 DWgiULmI/7vwOLT0E7OmhAJAp8hQ7CCmEWf63fYziCSzAppeeZBnFoU2vn8iLDif3l
	 OqacZpHHJS+julcQOSVZMRNfha1E3fr8cpGjlTlxlZX4Co7NXcSKIhrWfqt+agjA/U
	 UndOz3xOThFiw5oVQ6veCdxHMHFG3DhnNfKO0NQD8dQ+rwHSpyFi5fENsHUbMcZmK5
	 Q/gPNZQST0adOGpCIFhR4iPUqpf1KN39xlDZmF4giPDMHEId3JhEazvhJU3AK/yYHp
	 UdbrdhOYvkvFQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 69708C4332F
	for <ddprobe@lists.linux.dev>; Sat, 31 Dec 2022 07:21:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167247128742.17649.1240837839399694527.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e33c145df4ea2c48eac94420352d9665c7dc0ccfa9545114cfe8a4e1a3ef7e54
Date: Sat, 31 Dec 2022 07:21:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672471287
