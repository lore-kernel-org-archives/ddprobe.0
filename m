Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7495A441C
	for <ddprobe@lists.linux.dev>; Sun,  1 Oct 2023 20:56:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5910C433C7
	for <ddprobe@lists.linux.dev>; Sun,  1 Oct 2023 20:56:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1696193768;
	bh=VUHh1ZxcAlpVhMaZCk7IU3kyeZgwB15ai3QcjbC41a0=;
	h=To:Subject:From:Date:From;
	b=vKL5rDVj93s8zWW4NxWLrPPGxuqbV+/SZbcbjxv36LQHPoXF6gEmTBH/OlcAQaSJV
	 Hg1Nt76l95304/si8Cmvv19LkyNe7O/ifp8It4UVT1itGmr/5PR7tCyhVlIB+IL3zg
	 YqcjTW3LSbcDEX0sK1LbezXXQM/z24vz7fF6fSKvkp63Dstuat9UIKrMW/jxgT8thQ
	 jyMxBft+/br5M+3cEbOPvmaQblIyPrfTpM01oTfoKGSfHdaCDVDjpJ1SY5kzr/SIjG
	 KjPmqXRTlKKudt0/bpy/PZmA6OPWVBvDdBJTtmRsfmQRedFVF77TcBXevYH9fK4xW7
	 keRwzIGisSnzw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BDD36E78492
	for <ddprobe@lists.linux.dev>; Sun,  1 Oct 2023 20:56:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169619376873.31359.17739150798409081389.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b7cab4f634e412835e0673215a2e0edc4558fe39d652cc6d581ba935ee7256b1
Date: Sun, 01 Oct 2023 20:56:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1696193768
