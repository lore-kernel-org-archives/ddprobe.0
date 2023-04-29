Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5C6AF17CB
	for <ddprobe@lists.linux.dev>; Sat, 29 Apr 2023 11:56:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 11BB9C433D2
	for <ddprobe@lists.linux.dev>; Sat, 29 Apr 2023 11:56:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1682769366;
	bh=/kFbb8xg/mX+YgmFTLiRtQFhOK5bcfMrR4TTKYqoZmw=;
	h=To:Subject:From:Date:From;
	b=gNUJkJKNknk7FITmlEPjj8foBzkHyyL2zBsQIEh54EqZfSz0wvbMUZHSDUo9421UY
	 uVpQpLpi7XA0eBTvwO2GaEfZfYbh/874StdRVcDkiVl+cGt4rUFqiNYIWMyvwbcG5W
	 qw2vtYCfMsHae9TZv6RL1gm/rVWVpaO6I8/i61z/92K7jElmGJrK19beOXfsUwP3iu
	 N0Pz5LQFxcZg5oqtKxybz6D0xMv46F1V1gHY7vJYO5UpqdJaqEsybATTU2FHWzj2QA
	 EKvjt1F0nV+Er2d4sCFZVb4IidJHyBFfIRk1S9JvfdIwGyNtl5E8DE0EAYjbHSFFtk
	 CRdyIoAaWaaXA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E42F9C77B7C
	for <ddprobe@lists.linux.dev>; Sat, 29 Apr 2023 11:56:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168276936590.10541.7608532150967587632.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d5d04b05465d280adc8bdc3122a507f37c793932d9c5cd24645e5698d2145d6c
Date: Sat, 29 Apr 2023 11:56:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1682769365
