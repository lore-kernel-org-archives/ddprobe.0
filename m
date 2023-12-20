Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0D1DA1F5E4
	for <ddprobe@lists.linux.dev>; Wed, 20 Dec 2023 09:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iFzG7JnN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 84654C433C7
	for <ddprobe@lists.linux.dev>; Wed, 20 Dec 2023 09:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1703065096;
	bh=Q+VszcxVQCkFvFdRaP6RiYfF8eC44286tAJiUJpufyU=;
	h=To:Subject:From:Date:From;
	b=iFzG7JnNGNzcZvcSltR5B/mjMWMOw0aUldC+1OtRIxu3U9IazPEL262EvUmbh6RuT
	 /OOoUDVrNnnQ8syMHosVsokKqJymMY8juZsI6Wggoz7MdLVwpPm80VVrJ4CKqtx0LF
	 hchUFJyfZ2zDu2U36veZTCeLliPslr+CRpiMJUfNYDiOa1DjJjwvEeihzppj3xpS+b
	 TE61XKAuJ2XonlESu2dRHFEwhOAobYHIk7z260JIfxS1S8uNZAJuWcrIchyAMj7j2t
	 kNXUX1GqBQLY5v548QE6V3dzakElrZn8Hd0uDeBB4Mitzjyje/kvDRfj62ZPQX0Ndo
	 HQl1SRUjCPMtQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 63AC5C3DA6E
	for <ddprobe@lists.linux.dev>; Wed, 20 Dec 2023 09:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170306509640.5945.873711055792652448.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a3581320dc2726dbbb67ff2b728227886a830397bcce43f089f0ab31b067e8aa
Date: Wed, 20 Dec 2023 09:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1703065096
