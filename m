Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 02E5611181
	for <ddprobe@lists.linux.dev>; Tue, 16 Jan 2024 07:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="O3stecyQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 80376C433C7
	for <ddprobe@lists.linux.dev>; Tue, 16 Jan 2024 07:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1705391296;
	bh=H2mmQTVGFv9JQC4dZlk4Wm1PFJvDIIpxbJdTVdL9Qrk=;
	h=To:Subject:From:Date:From;
	b=O3stecyQw7DFtMM7dNAPbyyDpkkZ0xMHK05mPkpokndMXgGKuvTuTvu4lRsffKNHb
	 QxaFmkUA8NgFyIaH9wx8bXgAc3GeQawFIO+eEsolYDSIWl1FKLtD+SI0XbsXNTTDXG
	 GWRivndek5P3Cpo7kJMdZ+b9KIpBSs6oWfDI39RueGYky5zvlzJ4J4tHMdGYwdvzZd
	 thyrL+Bh6YnGJ6RjEUeZEyd+ezmkC4FTCI4WFCQDdUp5YaB/rey4votnpsqE6aIf8X
	 0eyubf7VKP0NfM+yAXvCUQbA2M6gS0URYsVC7ib300PyodA7JDWqAiQifWGYk3TOg0
	 joHl/+g3Hk0Vg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 63863C4706C
	for <ddprobe@lists.linux.dev>; Tue, 16 Jan 2024 07:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170539129639.29270.12498615659635904819.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7a7eb66a3e53c4fa9f2efda71041d3af0e90fecfa2bab2f41cf997603449add8
Date: Tue, 16 Jan 2024 07:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1705391296
