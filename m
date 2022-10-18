Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BFD087F
	for <ddprobe@lists.linux.dev>; Tue, 18 Oct 2022 05:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6EAFBC433C1
	for <ddprobe@lists.linux.dev>; Tue, 18 Oct 2022 05:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666070453;
	bh=9tmVSE7ArYbHHO7YmPCntC5KGs6xye8+WUvBN1vlY5w=;
	h=To:Subject:From:Date:From;
	b=RcdDSXMuzFnFjxZn+vaKndFq5GCv4SnGK5emWatS9Vu4AMwNOa7hNeh25T1E+6Q5m
	 YBy7b46r6h30sNiBA0HDPGJHTySZrFV4SBm9GYNJpd7AkmlfewJjv4Hts4MCZmC1q0
	 Q72QEVnNGLOqglEiYqc7iHlUJ6YzOvN8kZEaiLyUJ2OhhVnk1N5sfxfGgOQdxbld1N
	 /SAHbCa6+GgRQU6oKeqjz6Rmcyk5F2ZW0AEr1ojKCAFVvQuQ43KgBJiFJ2e/B3iFar
	 U0WD0AtY1fmiKxmjYD6e71iTFdgbsXVfeXAjLMCZzXPDUFLiIgscQDG44/7mafcOuC
	 KWb3gdipG2nQQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 568BCC4332F
	for <ddprobe@lists.linux.dev>; Tue, 18 Oct 2022 05:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166607045334.9645.466756143454549153.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 133f587dc3b45cb3b071bdc0c44c1f8cf46cce5bae05a880b56de2f101c42632
Date: Tue, 18 Oct 2022 05:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666070453
