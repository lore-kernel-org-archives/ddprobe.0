Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4949AE4FC
	for <ddprobe@lists.linux.dev>; Mon, 20 Mar 2023 14:47:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id ED97AC43443
	for <ddprobe@lists.linux.dev>; Mon, 20 Mar 2023 14:47:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1679323626;
	bh=k3yN6msw8WA5cKdcKmlvLQ/K1Q7W3Oj5rltUr9giIkg=;
	h=To:Subject:From:Date:From;
	b=jkRjfSx4iZVGXksdoAcejjVBibrNj81GFrWQZ1EhoVWzZRYgNFxrFCosldNQOFe7j
	 d6cI1YtMnQy5RReyAA3ITBmUnWBcLG1UKwXvGoSyCgBtFQLffqxLpV/akTAkei4W2L
	 sPoLfsAO2vYMcdyeMA/5tvbkdzKjGrc+qEsl76alkyNt5HdIj07BxPByFRXAYEQhKo
	 zpZQLFJNkvFrDKK13lZO/5GRAmzeLvOg5T9U0V+x1q9VsV7f71fBNwObLFoRo+/VgO
	 IK80eVTrFVVtvrvKMR4oZe+ZJ9TD8vbPsW/JBXSFsYww8I3oQ/SAb7N/Nl89MmvFve
	 ymL1RDLqqXf+Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CE466C7618A
	for <ddprobe@lists.linux.dev>; Mon, 20 Mar 2023 14:47:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167932362583.24008.9557409765225430349.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 60dcdb7086c5ee7cdf07b3ed2b5477aa1fc81a1c48344f7e0c07a4da8a0a4e62
Date: Mon, 20 Mar 2023 14:47:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1679323625
