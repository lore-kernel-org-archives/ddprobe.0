Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 012017460
	for <ddprobe@lists.linux.dev>; Sat,  9 Sep 2023 18:54:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C3D3BC433C7
	for <ddprobe@lists.linux.dev>; Sat,  9 Sep 2023 18:54:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1694285648;
	bh=Ev1yBPJN506zntzB/UafBbayvUjDDcdegx8Zj+sp6bI=;
	h=To:Subject:From:Date:From;
	b=RDexFFkoALMTO6oDz32OL3+1CH+N/XPOpZ7eIMkvy2s9CkK0xX+EOLrwtQVVb7sbn
	 simAwNK5l6v8MPoGTE85kJ0znTqW15/mArLB4TSKUrK8y9WvFW6NH7T/HUZjF4u+l2
	 oxVAHzpukn/pTD9WJZZL7N8/VD1IxlY2qoK8CMPpOddAPbC4g2O7CDi5+aaG578z7q
	 uyY1izlKAt6+MgROj1wf16E8ie8zIaL39oJM9MUjkgbXhCCovCWIkUdUMjo3kbK7Rr
	 AoAQPIc1CrqEKiceIC1olTtw7oMOqi728WzYt3pylmpeUSIYjWhSBOt1fg5ZxLb8md
	 P5KUa7RPdnk+g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A7BE5EE14C3
	for <ddprobe@lists.linux.dev>; Sat,  9 Sep 2023 18:54:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169428564868.8486.1138530207517767775.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b9aea923d3aad61893acf4cf446569296fb7b7b5b8d5847de13e79514f0c20d8
Date: Sat, 09 Sep 2023 18:54:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1694285648
