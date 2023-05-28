Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 630607E
	for <ddprobe@lists.linux.dev>; Sun, 28 May 2023 22:09:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 04CDFC4339B
	for <ddprobe@lists.linux.dev>; Sun, 28 May 2023 22:09:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1685311746;
	bh=MhmQ0kIXhWei16eMlf494eNPLm8/qf072FUlyrB7OWs=;
	h=To:Subject:From:Date:From;
	b=eMP0rZmQ8Sictgzc1dILnml8glwwnVL4lTkJPQXxeKG1L60cpYWwmTXEetb+vp9P2
	 /s/riREWlBibpeqRJyiSCLsolmypbJEGiaTnzbZSYqDk4FLNjiqtD4ZaY9C318UVqw
	 jvGFz5/RplFFbpiiaxeSR5LvRrHGNADryr+tnEP9P5X2ekRamK3OOuEjbx9mzPp38x
	 JQguyNJTutYMJ2tyUdohsIznVYbkNwsEOpRWRg+wjYyBaKK3HQdRUqIrTtrzU4Y48I
	 +VY88mkgLgO+E4SCTE3FtF2WvaTOQmBUSt2ASvth/QZ8aDavkYMnoSBseH+hQ4OGjc
	 XpbT4hSe+W12Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D7EDCC7EE23
	for <ddprobe@lists.linux.dev>; Sun, 28 May 2023 22:09:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168531174586.10330.8426491047046362036.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0eb35a2a351b5529d6a9daf17d3f2f47bfc905bb5acb6322109897d962743d8a
Date: Sun, 28 May 2023 22:09:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1685311745
