Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22380611E
	for <ddprobe@lists.linux.dev>; Tue,  5 Dec 2023 03:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qg7ejnXT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 80D4CC433C7
	for <ddprobe@lists.linux.dev>; Tue,  5 Dec 2023 03:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1701746296;
	bh=BHhu3C4FBUilvAy2LidZiT4YY5f2xYor78KvkprHvAY=;
	h=To:Subject:From:Date:From;
	b=qg7ejnXTBFTOwCXG98xA2JVaJegD4msVaIG81cJFOJfvjZbHmSXBIZhDUtT2udBAj
	 cb5e6YuINN/MSwnChAcTgyvqkAuu18ZIrYDEXzo6v7ChXQZ19FdpIReThMqPfmv8W/
	 96wW+pJKxyeLTd+D4RBZQYBIILlwqHsXhD9KYIK/f8IXhp/b505O9O8Y6sEFm9yhfo
	 0fBSgwT1r+8XP5N/FhvVOvz6fDeSwJ3rt3hk2GSRo9z2k0dWGxxDQ6M8s9zgwi+FlL
	 ilA2vJ+bIVwVEyCBicKaITqhacKrl8GC1ou3YtlO3JNl4qPIqAmmBF1IQD7BURXA06
	 HTBCISw8sWG/A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 629CFC4167B
	for <ddprobe@lists.linux.dev>; Tue,  5 Dec 2023 03:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170174629638.31255.4648767771248366457.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8386680fb9d5dad28e874bc9286e3f5621c0358c29b4c83c3ec4c30d19180373
Date: Tue, 05 Dec 2023 03:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1701746296
