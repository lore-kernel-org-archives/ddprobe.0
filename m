Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D7AC620E3
	for <ddprobe@lists.linux.dev>; Fri, 16 Dec 2022 11:51:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 86403C433D2
	for <ddprobe@lists.linux.dev>; Fri, 16 Dec 2022 11:51:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671191487;
	bh=LhFIKypAm2HLe3Gm1KVZzuCx3hjwYKMtsfAr4qV1ONY=;
	h=To:Subject:From:Date:From;
	b=lqkjgWtVUTYWJNfK7WarnQK/ZlS1jaIpPFfWh4GwZSkzhERcw6hsod6wEqki4DZXM
	 A+QiJ8ScUWASJg9c+fTkS0XOBjJE1NmgkstPofTfURcyGAf47e6EI3+j1S2RAGeJUP
	 e8Is9PTNQ/GvODu7K5IuPM4G1/F8jIb/RjZJyAnRoq/0qNSGGZpiANi61aHkRh4df2
	 rkokPUv7vwz6OLA0PkkGJaJuCy81TMw87Muhy4ywL5kKg/nY+Hh2q4gMCEYqLcwZty
	 PItYOqeqrR/0n7pUsVwoNo/Qn9rHrOfFGyCiNYKE0qlx9Wv14ExQXbJALefzMQHcFz
	 ypSc05auHQzTw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 64E76C4332F
	for <ddprobe@lists.linux.dev>; Fri, 16 Dec 2022 11:51:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167119148740.23233.14755218922956483732.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a98b085d260bcac112955e4c8e5af215cb448c731cb28f326794bd9514f8ec5a
Date: Fri, 16 Dec 2022 11:51:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671191487
