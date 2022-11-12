Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D41026FA8
	for <ddprobe@lists.linux.dev>; Sat, 12 Nov 2022 22:10:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7A816C433C1
	for <ddprobe@lists.linux.dev>; Sat, 12 Nov 2022 22:10:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668291054;
	bh=X0l2XhCQc+5q8fzU7KlwEU/JUlG2T2ZSGMpez3OL1Yw=;
	h=To:Subject:From:Date:From;
	b=PzQbVQQb9chAf244uqxtj8QZeoN7vuUJ/IBYaTp8iYj8PGiN1qkWkN3oB1K6kVB6y
	 Mu+lRPe2a0DGD7d9nYLHRu7DNM2/2iXNpyzsTjqeeAyOsvoAwvWjBam3SJ/3zSw/OK
	 8Hd+IowlxcqqVXMoKuJtbi9+rbZ3uPcwnPetpftIoomIoywxu5ramW/fhAckTfL+3T
	 aEKFFUJHJnKGCs5rmp435Afaw9pcvJ8PxyvTqgFI12Bd7eIgrSnPWHT4GvK0iuK+ms
	 rWq87sfarCiXJhFO4T9ERJ/A8h0DaeHCdk9DItxKlxQTeIkhYNXgd1jZmoF57Cea0j
	 kZ41Fz2nYs7Mg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5DC99C4332F
	for <ddprobe@lists.linux.dev>; Sat, 12 Nov 2022 22:10:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166829105437.1148.4946494183111894444.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f7ab7c648f27d6ecf5344eb80a2554076a19460d87d7acd83038c4b19e60aff0
Date: Sat, 12 Nov 2022 22:10:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668291054
