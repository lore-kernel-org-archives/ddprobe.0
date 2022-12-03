Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B75481FA3
	for <ddprobe@lists.linux.dev>; Sat,  3 Dec 2022 04:10:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 76015C433D6
	for <ddprobe@lists.linux.dev>; Sat,  3 Dec 2022 04:10:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670040654;
	bh=DaTbfYMYCMtjwGR1yDwR4WQq1wN8F8QAyDZZgLiVcA0=;
	h=To:Subject:From:Date:From;
	b=n12TcTfxrlAuYebk4+NwA2KcGiAJI5EZy93TM2JCERkSTM3iynFghB1lDr3a0CN+B
	 MDYRH12nBJDFUJCRWx85uPdXsThbYo4nwc/1J4pYOcXuVSPNw8dSdW/kDA8ytjKjwF
	 EgNOYmEs/QZBEpaZFV13ugaoteKJcUBHR+xP6X424g0fJzXFTcFDVv9jbEAN2n4aVd
	 Jw6R3STVQXz/CR4Ayw1K+bdWWtzGjE9bkxCf1aro9l75qyWf1qQ8DWhsbeOsgdvwhP
	 7A06/JrhU0akh13Yw3ecXyhaRf7HFSf8yCfAhf1/WVXOnP/J8iwvvux6Qxdv+vcdxC
	 4ti6zbIOqlH9g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5C6EFC352A1
	for <ddprobe@lists.linux.dev>; Sat,  3 Dec 2022 04:10:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167004065434.17018.6122520838641324061.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 345900283574a6b4075552cda1ef8617df00d8b9606509c8587aeb160cefb825
Date: Sat, 03 Dec 2022 04:10:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670040654
