Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D836B373
	for <ddprobe@lists.linux.dev>; Sat, 17 Dec 2022 00:51:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 81E38C433D2
	for <ddprobe@lists.linux.dev>; Sat, 17 Dec 2022 00:51:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671238287;
	bh=4bBmO5jO9/pbzhKgYA+VSL+VtFFBGxVq5nW3lY2iYqQ=;
	h=To:Subject:From:Date:From;
	b=oEVM3YlYnrGJoEcNh/8BIP2noNdhTFrBI2WOBkBp1P2CUkpgwOhKnfOgTU1QS8WtK
	 u3ugjyIsULPy7pvIq5KIAJID1BUaZRxTTrs9u9C5JRH8bH9LbMIHBVXcqAiM3i6R+g
	 02eoqCKWidxxPdB+AWJiF1BgKJ1NUUG8v84mbScFhKzXxAAoaRzH+q5n2Y8qVF1Kmf
	 DRZDWpkJmzqtR7UcTFv2iRE/ETny0XyDgMMelfu/sxOveOLTJsNxfxmPEgdTi464BB
	 GEsh6GXA08jj2CQU7x6F+Gx5wfV29HDaFyKGuBGiKuJfQ5M3OiBFpyCPsaR7EEPZvX
	 IqVw6I4TG+yzw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 691BEC4332F
	for <ddprobe@lists.linux.dev>; Sat, 17 Dec 2022 00:51:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167123828741.6608.8856121933342240351.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 30dee6eeb23fe90dd4d110ae9ac36ef1160454162c8190fcfc2ed9c5d3e0fabf
Date: Sat, 17 Dec 2022 00:51:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671238287
