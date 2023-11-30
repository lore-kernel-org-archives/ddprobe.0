Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24B225FF0A
	for <ddprobe@lists.linux.dev>; Thu, 30 Nov 2023 21:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QIOCs/+K"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7D6E7C433C8
	for <ddprobe@lists.linux.dev>; Thu, 30 Nov 2023 21:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1701378496;
	bh=3DUF+wbNzmURMdvlQQG877c2qTOFHcquPF42Eh1PXAw=;
	h=To:Subject:From:Date:From;
	b=QIOCs/+KT3zS8j40Zr2f6pDek4pv+wJyXLTc2kk0FLZHlzKsNXNJMMVvqiErjR3RZ
	 T5yiGwKI3EStA4ZnMcV/GKpqebbiZBiWRXHp6aV3asCmC60LM3x1nT3TP8uHJ0agwh
	 Ke4Nq7E3lqw+sYNORXB8Q/tFLDmx4Cu3Q7Cqvzb0Xk1ZdXjWpOGztJIR/sCO3LFhjZ
	 +rqPneGlztB5TcAaKigHuPxHmVMc4IyPh9FeX+DMD1IqrLHn+HGN8mX/KUW/PCiKhR
	 sbokc1i0ZXhMzpdB4uviAA6eyVRXZopmCUTBsVRVwBgFF0MReX10DbDskUfPft912q
	 rECG/x64OqGGQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 631CBC4167B
	for <ddprobe@lists.linux.dev>; Thu, 30 Nov 2023 21:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170137849639.24355.15499834076472951950.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c5c4679b0eb8086cd7fa6bc4207a7ab115277a5037cbadcc99063dcb8b362353
Date: Thu, 30 Nov 2023 21:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1701378496
