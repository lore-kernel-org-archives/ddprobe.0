Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E7A5EC1
	for <ddprobe@lists.linux.dev>; Fri, 23 Jun 2023 05:13:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C47F2C433C8
	for <ddprobe@lists.linux.dev>; Fri, 23 Jun 2023 05:13:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687497188;
	bh=hDpyF4OpZmQtntMjOnp5JBnr9YZhuufszc30iZ0PofM=;
	h=To:Subject:From:Date:From;
	b=gVsOXpq4KVrQ7etUtvnA/iSQYp1S32TTVMlNm4ss5eaIWVYQ303z3pRXiGwGWefvX
	 iE/PGyigbzkVuMpXbdrOvNcW35ndjiyENjkotaQ8M89+/YmPe22Nsu+ZZ8ylH1av/7
	 XNM00bv1BQl0abW/PQPRloQ7PUBHFB5KCEjSyhlNVga0zeOFOkFsd/jCGC1mWFOqBQ
	 JcGZs0m1K80gNCMKuJWHMQxZIk50jMFg8EGdVwTZjJH1KMlneYNT/BwLejpuAPwgx7
	 SGnvizOrziyetfwhv2U4PQ7ZHiHZaQqXo8Q9m4oK3R4AHFHULA6K1kAcq1EWdoNDD/
	 AHAJRan056Zlg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A7AB9EB64D7
	for <ddprobe@lists.linux.dev>; Fri, 23 Jun 2023 05:13:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168749718867.31671.10831364680962279099.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cbe97bd715f020e547bb5ac6e668026ecd0f2a097da258446f250205e0335cca
Date: Fri, 23 Jun 2023 05:13:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687497188
