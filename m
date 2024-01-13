Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0EA64F4FE
	for <ddprobe@lists.linux.dev>; Sat, 13 Jan 2024 00:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Gn2Vy68z"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 76F6BC433C7
	for <ddprobe@lists.linux.dev>; Sat, 13 Jan 2024 00:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1705107496;
	bh=RDvxA3tCS+tDdtLETGoukhRSvvCpFRDymLgt5CWPoho=;
	h=To:Subject:From:Date:From;
	b=Gn2Vy68zESDlX88CRqGWbLLgMyWRBtmJJzf0t+vzji4vNcEuXttNCNA+YNd1E/kbj
	 L7ISccWclNw5EV30k9IUQYBsmcXL2DSpRsagp2thLN5qjJvOGuUWbE82sYLsH84RAr
	 K/jJImtJ2VlJ1PeG/6eX9QH0xaEfpml+hSA338HpwXsj7kUoMib+1Lr1WbZgUDZ19v
	 nEp7rg8JEFr9JU7n8H4Ua6vAEB1zm6GqY9R4cXi7xqUU0jjoRBldMucAmjNo4KXSma
	 rTKBZn/RSlY5DwovUXX1LusvMiAZ3TrKG8MTFi1jNpag71XD7d4zEWN3t9cNchSPyE
	 FsfSaNRemT08g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5DB29C3DA79
	for <ddprobe@lists.linux.dev>; Sat, 13 Jan 2024 00:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170510749637.13296.15691265217157744388.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 020faac52c16d471cde8d77406ac206d747365e73981244bf2e03c5facebbdfe
Date: Sat, 13 Jan 2024 00:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1705107496
