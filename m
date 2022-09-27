Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B23E84681
	for <ddprobe@lists.linux.dev>; Tue, 27 Sep 2022 00:00:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6AC18C433C1
	for <ddprobe@lists.linux.dev>; Tue, 27 Sep 2022 00:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664236853;
	bh=3/ZxvgQu0N3cpicGVf9YNJmRB642FobwkhCAyPwOg9c=;
	h=To:Subject:From:Date:From;
	b=kMI5fXv+fAM8KJg1+wn7k/3neGEPUNiqwovplD6UMpNP5XkxIi65ZIHcpcUGJ7E0C
	 jjXq8EpMLp3SAPjbQL8b7PrqLCrFt/FQ6ngSh7rOC/x1F133CGc+ep/qANH/u2WK1f
	 jFFtuzs36Us2xM/L5ZK68LRSqvxYyUJo1MsX8NK7zLqedYgT9DJJTscd6JpJZeRZH2
	 PyvR0p+LJXqDoH+5XYN/JJzPmvTdJeTRNbe5tobBm4nY9Q0PitoHARVcTfqYhFkvhv
	 kVwANjfMaKPaaOty3PvACrsCBHmDClHeQvlRdRg/HxXgH8n+mZf1PQs87k6QVkhTBW
	 FBwu+uN7L1Uyw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5201BC07E9D
	for <ddprobe@lists.linux.dev>; Tue, 27 Sep 2022 00:00:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166423685332.16742.12556789211462495334.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 18f5f95ef2508209695b810ba46ef0ed6aabac176528662ef267a04fae20605b
Date: Tue, 27 Sep 2022 00:00:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664236853
