Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B3FF64C72
	for <ddprobe@lists.linux.dev>; Wed, 19 Oct 2022 18:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 68ABBC433C1
	for <ddprobe@lists.linux.dev>; Wed, 19 Oct 2022 18:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666203653;
	bh=wg/zkIPW86TWdUW0HsFa/Lhm6I2e3scH/noEzYBapE8=;
	h=To:Subject:From:Date:From;
	b=jYkJM9wKdNtv2z4Q1yvJmmSzO05loRxtF6CEnLx5LGGzdO/pU5/AXpNkvpnEibEmu
	 /Tud6ObXyR9F4D1omad5Pd9W+P1YYg6l3xlYS8WekzaQTS3tpm1Bea5VWv8m0OgEvP
	 Msh3EPuIXvG36KYTjOwg+m3/gw9+sTRL0kgRe0I/S3oJO1B6j5vDv3ZclJYtCs7/vb
	 QnbpGSIZT9oW6KcQ0ZoZl3bVgZWLftxs5/AKTOs7p4smE1QH9j3BXxJt1wswHTq3sF
	 If+FozoB0MoNuWm1e3lvLpNeS3K1Xo2iiN1MQvCGUw6npAYyf7sOa17VXhRU+l1LhG
	 RA5OY/rear7jQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 53578C4332F
	for <ddprobe@lists.linux.dev>; Wed, 19 Oct 2022 18:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166620365333.1716.3373593063108633882.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 98cd7e01d27d8ce8dca57d65a4e464d712cb5ff3aaeecb9cfe49a40058a7c4dc
Date: Wed, 19 Oct 2022 18:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666203653
