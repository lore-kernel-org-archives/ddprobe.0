Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D278315AC
	for <ddprobe@lists.linux.dev>; Sun,  2 Oct 2022 03:00:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 73527C433D7
	for <ddprobe@lists.linux.dev>; Sun,  2 Oct 2022 03:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664679653;
	bh=7r0fV4lEPW3xK9zshdc0IbG9n4UeLEtwZ/0f0wF2D8E=;
	h=To:Subject:From:Date:From;
	b=oZuaJV5jyXAuNF+l0Q67PLXqtNslm5uGBJBHXlTz/LUpukDX6e6bOAueBqE1eqUQt
	 wMt8hFfNBUEIuBi0vK1dSzJ6ivzgZojt9Hrdzrjiuexqx8KiVz3ALWhJWPu/7c+HlW
	 6zXM7iGLVT9gqkb0RV3xXbaNWaT5LnXQmamJN4NyhefTUD3MnHoJUzqDscHHDTuYXR
	 385/Fjiw5r8kqwtkY7sswyoi2vgCov2J8++xc4rL7x5ut30GhtWcKfzX5Lna3GekDU
	 klTpwOR+dAO3PIRx6plfAxToBGaCDa1l/ZqPII0/7+Wt1AGUN+DEJXkc+xU/nS1svM
	 lwIAcUsi8WBtw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 562CCC433F5
	for <ddprobe@lists.linux.dev>; Sun,  2 Oct 2022 03:00:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166467965333.18429.8766993547824575357.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5432b8c20c55d1446e1950f2ef81d2b314b76bbd4596a28df63af732604c7fe2
Date: Sun, 02 Oct 2022 03:00:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664679653
