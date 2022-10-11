Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C643C6112
	for <ddprobe@lists.linux.dev>; Tue, 11 Oct 2022 21:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7601AC433C1
	for <ddprobe@lists.linux.dev>; Tue, 11 Oct 2022 21:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665523253;
	bh=kYFKccEBNqU0vqTkO3ZXOhvIq0GJAYXAs+CTUFnp6As=;
	h=To:Subject:From:Date:From;
	b=urCJZSE+MotDRZP9R5SKc44hQLDY9xAu24KqWg8xqEUul8DbJXkjkgDUduehNW6bv
	 Ys8pTuMIggXKxAeaKbtYPKpAwQdYQvNqQ/L0YVf8sIY0S+LhbBR7EtoSbRzwGnwejR
	 Y0XIJvwe45HtXSNwIQRhJNXq2tS69RyxW1cv9lb4y29DDlmv3faEe0c06YRYcyAriz
	 Qkl1GZP/Qwlr2zIhm/OqM628M60lvHvqspGLrz8yTrLU2OZ+MIdh4HTKOmhRhOKIKX
	 mHPC4gQlRhhXWIMuIE7yEznb5xnT2iaijF0lilxb7d60HfGdqMLYIsPzY6Yv/aQRHK
	 cjvCd77tEAnLA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 57CB2C433FE
	for <ddprobe@lists.linux.dev>; Tue, 11 Oct 2022 21:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166552325335.10785.9433587811636982200.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6667d2a7875fa084f46552285b321cc12cc9b600c8b0c2c86313b0752e848c7b
Date: Tue, 11 Oct 2022 21:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665523253
