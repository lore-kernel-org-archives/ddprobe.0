Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D0E32A479
	for <ddprobe@lists.linux.dev>; Thu,  8 Dec 2022 23:11:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 82B0CC433D2
	for <ddprobe@lists.linux.dev>; Thu,  8 Dec 2022 23:11:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670541087;
	bh=ocy+2oplNTH4pXo9vPCohUvri3eq2npQP5AHNxOpSx8=;
	h=To:Subject:From:Date:From;
	b=Ta/mdc0inJ4R0O7xQByKQFX/j/aoC9JAAosVX2+zyCe3oi1aX7Kk+qNbaQFIC2sIS
	 gBvpCB+RDvd3QPrbnrKHmK3MCNPUjold0YjGEGeO+k/Ok2yMXJvrb15JVP0a3Q0an3
	 Y+oE2llbnKkG6WETYSjrP96X3HTd0fl8Edgo5Gjok+aGAaSOIsMQoar+ZHjwAaocH7
	 UnOCHwG2JyMec6RZZ+LEeW90ZVWWtMiCaBXNEDSfhm1rGfjIWKagceZpodY/FXpgyI
	 CiPij80O4Zz5xMco863M4THMPuDm3IAT1CQ32WoQQo1U6QRqUjSWRPBQhsSh7+6UlD
	 q4rhqkvUDCniw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 68D21C4332F
	for <ddprobe@lists.linux.dev>; Thu,  8 Dec 2022 23:11:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167054108740.9856.198748786219151952.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b135dc8b2eb833235f24d9b4c28465149b71735af8c9d99340e6241999af88e9
Date: Thu, 08 Dec 2022 23:11:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670541087
