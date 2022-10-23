Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C0B4120F7
	for <ddprobe@lists.linux.dev>; Sun, 23 Oct 2022 15:00:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 69AC3C433C1
	for <ddprobe@lists.linux.dev>; Sun, 23 Oct 2022 15:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666537253;
	bh=W6knSLhf/+sbv7pbzWbUZkllnT/61Eq2Sz460wN6iVg=;
	h=To:Subject:From:Date:From;
	b=h5FKaRV41AsGIIwZ6zZ3NuxZb9I7oaSHbf6mN6qWMLCI/pkVb8afCrsg/gBozLCJ6
	 Hl8m1G/BQQ8Kzwt/WbGN9GbGXhi9AtN42xP1YfHHni0m6fKZujKdQigYhgAMTIFBT2
	 pZtT3Rz2Gn8jjzQUqveshbZYu+hmSAvIwaIfYzJZzgqpE9L5KPjSohChUBDQGWU5kE
	 LAs8pK3xb9HfdBQalmLDKdtNWxMF3OxoeIxOmYbOsHGaVGhccE6omfEOO9dO15V9ri
	 jNyWgLqo7d0a2361TNKkJwbACOSlZhYyd/Z0S7rwITIKHMHTth+Fh1CHPTDlMqPfzZ
	 Zt/anCdSVCACg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4EB0DECAAA1
	for <ddprobe@lists.linux.dev>; Sun, 23 Oct 2022 15:00:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166653725331.7773.7254445549211059964.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 47f9a6aefde3177d4f35c1e35f8e4827488de768b19cfad7080715203a17fbb4
Date: Sun, 23 Oct 2022 15:00:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666537253
