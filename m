Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 48C0F846F
	for <ddprobe@lists.linux.dev>; Mon, 27 Feb 2023 20:26:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E626DC4339B
	for <ddprobe@lists.linux.dev>; Mon, 27 Feb 2023 20:26:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1677529565;
	bh=2Q0GqshWzieUSYbVVkZjaII/q0J0PWJpvRnuI1vVtuk=;
	h=To:Subject:From:Date:From;
	b=CTgzpJa4+c+Ya4oUjknyPifl2mgjwJZLaT7cqI0AVKCxkW6+t9dzj+menLGZM/SG6
	 ANpY/CFn5TX1hIlvQ2aiMk17O9iasGfGPwmVF5aQO3tP2IHhk5U9TuylJhS9TIVrDS
	 K6FK5/pYfx8UU8MFsky+P1Bk0em+6IFVERE5WTH94UIiW97CNKEqYfsVnh+ZpC1h5/
	 Nkm5Nr1Q/YO7TqpaQrhAovIPClzJXQE8TCG06CXJlijzlrnwFdGTnkS61OLNR2wn4M
	 tfD4OvNEjtnpAkWOnmwtWPafR3ITe8Iu1KFC0Kd7/bhsOJVkNbHWAHxOSndOKdlCpB
	 6eDLs+l04rZ7A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BE53CC64ED6
	for <ddprobe@lists.linux.dev>; Mon, 27 Feb 2023 20:26:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167752956577.2753.2897646769900326097.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 387976f4ec2e1ca61771ad967389bd1e74cf985c5ef329b9817ca2a277d830b0
Date: Mon, 27 Feb 2023 20:26:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1677529565
