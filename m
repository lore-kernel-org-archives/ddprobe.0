Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A745F14A88
	for <ddprobe@lists.linux.dev>; Sat, 16 Dec 2023 10:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pb+X6W74"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 79BC7C433C7
	for <ddprobe@lists.linux.dev>; Sat, 16 Dec 2023 10:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1702721296;
	bh=/sGnU/SDQnJ1B+jOa+nVcPyVjT3RCu1e7BDbZlm95I0=;
	h=To:Subject:From:Date:From;
	b=pb+X6W7486hQDETozycsHfmsSkLiXRCAtgHw73BI4Dj7pOhAD4oCeZKrukxlftRj1
	 /mwOPdLp8vWdVSR748NpN+0Q7y7ZwVNj/M+KbryJRi4T4qdDv4kH1V1bxEb9q+cSSq
	 6xfRG6AROFx3JoJPiqh8G7Fx/ZVEX9yvW+M2Jf04uYTIxFsDve4jfOxq8DKYV2kGL+
	 XphDPVrsusaVxwXFcOygZff9agsxmizwZkuA09leGjW8wL31t/Vl5P2XAxYPNaRhJ/
	 S0sy+Hcq7Xb8/1sr91EvPposeHlK0ujLfI/swebgtMu2VCSBF0Gcy3S05+csPNT6pg
	 OJgdyBcATpCoQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5D69FC38147
	for <ddprobe@lists.linux.dev>; Sat, 16 Dec 2023 10:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170272129637.14458.14899080650757085707.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f331ebac800f71c912a9e45c57878e3b1b4e61ee22b78f569bbfbc9346b68161
Date: Sat, 16 Dec 2023 10:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1702721296
