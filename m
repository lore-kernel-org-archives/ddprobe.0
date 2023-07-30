Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5CC55DF56
	for <ddprobe@lists.linux.dev>; Sun, 30 Jul 2023 17:22:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C5CD7C433C8
	for <ddprobe@lists.linux.dev>; Sun, 30 Jul 2023 17:22:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1690737728;
	bh=dTBfdD7Zm1n0bPCr10vv3EKnpB4zkwYqzmY303kUb3Y=;
	h=To:Subject:From:Date:From;
	b=QzxEbrudCKZ44kOd22W6L2HzCufI1pI98vOOSvc8iYb01Nx0/WW04rSgXR8uoedZU
	 ZbKMre0EB8BZ8lK6nxQOQqhZPhnwQ4hVvgVcU2Uvt0SAEcKh2IQjCUCNbiWfpkMp6q
	 GuDp0J9uBQQlDCauTgcKSArKW9dIMFGIRCL/LS1HfHKcaYevJh3wUf9dchqVCB71gV
	 Jg65QUrdaEIqMyNqjwPt34YK9N745e6VxbIwxoH89m+fhxVb4bb/Zsi6naIkE/9d3Z
	 KQ78myVK+oswitxdVfTqYO1pmvprNH3Vy3W3xFaS1w8tSorpha05E1sfSOprcrRto3
	 4SBCfkTY2YfoQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA43EC001DF
	for <ddprobe@lists.linux.dev>; Sun, 30 Jul 2023 17:22:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169073772867.4349.6072355635510580078.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6d0f842df924efdeb212fe3329d8d4998c523b59cef55b906064eb9c476017f5
Date: Sun, 30 Jul 2023 17:22:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1690737728
