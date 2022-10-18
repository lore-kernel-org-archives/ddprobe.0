Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BE0A37F
	for <ddprobe@lists.linux.dev>; Tue, 18 Oct 2022 14:30:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 75C02C433D6
	for <ddprobe@lists.linux.dev>; Tue, 18 Oct 2022 14:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666103453;
	bh=6ow/H9PQfhn7OpaECtwBwKkjmkl1VlXtsn7dv48lKWU=;
	h=To:Subject:From:Date:From;
	b=FLDs53J47eYp49cEQPqbJD+hnWTBJrqxpoV3htuwGcdZ68j27bCkVXTMlYblvcY/o
	 oTPnCpXNMuXuPr64E0rTWKvMhtz11h2AC86/MMLp2eP61TP9RQ8S7keQOvtu4pCOo1
	 xRuhSGJISRJA9GgrKM27CXxiWOYXC4WxACVkSzxZvbKB/S1VjxLF0oXlKHF8GJrd+h
	 CMxiWvPViZGuO7dlM9i+Jdp/uRJ+Stmq4kj2MK9mqnDLona+ogENRn1G0ZPsFSkopa
	 R+0pPvc5TQNnILx0DoO3sMbUpwFzCe7g/n07qoJ4rhcFd0vI0X/9LElSAvv4prcLqb
	 kut8RWYR3eb0g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 56DE7C4332F
	for <ddprobe@lists.linux.dev>; Tue, 18 Oct 2022 14:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166610345334.18273.869577922180723215.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 50b620a804259bf0650ee34f734a8336a46df5cadc0dde0a7921506bb5182a5a
Date: Tue, 18 Oct 2022 14:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666103453
