Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CEB2033F2
	for <ddprobe@lists.linux.dev>; Fri,  9 Dec 2022 14:11:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7D21EC433EF
	for <ddprobe@lists.linux.dev>; Fri,  9 Dec 2022 14:11:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670595087;
	bh=Eqr2nVjjkxElimHRp12S+zCmPYYbBZBXIbwJ/r8N81o=;
	h=To:Subject:From:Date:From;
	b=p9PwbVOEaqImqcGuDJdRexx8BLwMLbwDOKu11bGmVAtbQGM2EGzkZ2nEoHGtkylGV
	 2rLKe7kLP0syqPbIWE5hpueMjkmqP2VJg1HJbbSt1YmFfh5nCNDCZuHJa5SpitPekD
	 djm6ZDIvamVqG/3imdMLE55Mb41h0lMLg7DLwosRcm3v5EQJCouBVvSr0W51oae/Nr
	 LWuL3rEQm3UhIEpBo7B/3HBEwH7WBnbhy6GqI+s+xO6TYJbCPpdJLgODRGQcoE04z0
	 cVbFSoMpnW+hZ7V61DEB3xTwFlpc7QcNDcdvJt8tK4x2BuOFxtT5F9Pvc/kuwVpwHK
	 aMDEBGjkpUetQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6329CC4332F
	for <ddprobe@lists.linux.dev>; Fri,  9 Dec 2022 14:11:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167059508740.22542.8391056455772680213.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ad209559da266cb8453b8c7ee126e4de5e5a9ced1244aef016930a131598270f
Date: Fri, 09 Dec 2022 14:11:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670595087
