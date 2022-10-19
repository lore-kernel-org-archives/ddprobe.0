Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BF1AF4C72
	for <ddprobe@lists.linux.dev>; Wed, 19 Oct 2022 17:50:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 771C5C433C1
	for <ddprobe@lists.linux.dev>; Wed, 19 Oct 2022 17:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666201853;
	bh=RL5LzxZ3w8WUk98So5lbHEY3vLfoc6uqeMUeOeDwQjY=;
	h=To:Subject:From:Date:From;
	b=VgaSTXnuhJZFH3jSReVeMo6GkH6VtEh4UwJCwajMXPUlbjQ7+xQ7LnytikAR7D+bb
	 i+4t4pbSjb/a6ac2gzcSy/3k/1oow07q17eqoAQR5/bAeHCl6TmU25x9nANhNXOcsE
	 za/oLp5ZjZu/FQBLewl68CXli7XiO+LlK96gPTKOda5s0aoOS1DeCTyuE5+kEV62zM
	 Oj3kUBwbtap1iiGepPSmDXZp2RRlXugfSAzft1EyTCe062SmDGpC6tzVcjNHweZXo4
	 var/GqZRjqScp423l7UUXHXfV1kptobOOtl99GIVSutrKpzfVIACmQHe3x9g9Mo6CR
	 Nc0NbVYP4EIZQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5AD08C4332F
	for <ddprobe@lists.linux.dev>; Wed, 19 Oct 2022 17:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166620185336.4292.11579991172560087176.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 64ddb3f1a1f6e87a99cec46bdb90f200348eb3822cadda69da77f6d38e2b262e
Date: Wed, 19 Oct 2022 17:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666201853
