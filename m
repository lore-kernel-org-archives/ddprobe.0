Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 487EBA4D
	for <ddprobe@lists.linux.dev>; Sat, 18 Mar 2023 09:12:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id EC804C433D2
	for <ddprobe@lists.linux.dev>; Sat, 18 Mar 2023 09:12:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1679130726;
	bh=UKCDQGP/JVViXeLkJFZKZ1ry91Kgr9DPftqFZJCS8zw=;
	h=To:Subject:From:Date:From;
	b=Qy7FdN7cwyc839EltQ/VR8QApNyFeGPGpS69nWa95u6cvxhC1EB0++WAqVZteOPq6
	 +vobDL/+znY9Qoly2SSsZEq8ecO+Iq6OKvJA/f5xhDqbpYT93kAZjVOyndrv2dCXiV
	 gye3VpoAxLiXnwzIca08kbX7D6aGONrzvDwoUPf+7uihXywAB+5m+Kz6BLi9WCM1Ky
	 PVbEgJT8dFbuACmanbqUJY8F9bV4BpCAfPKFFVInSGuDOTHJm+yIdN4uMUzXPFxFQA
	 a5iBaAFeCr0R4Fl482CGbtgL76egz70eLuKTJ2/1TpovJNkTmnnV4mitGbDL7WNBCB
	 P3U/Q8UdaLVnQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D0AD3C74A5B
	for <ddprobe@lists.linux.dev>; Sat, 18 Mar 2023 09:12:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167913072584.26485.9123645926257932787.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b67196944975591b7d1bdd991706e7532fd24edac31cfd6b06d97bf71676f340
Date: Sat, 18 Mar 2023 09:12:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1679130725
