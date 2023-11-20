Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0877263D4
	for <ddprobe@lists.linux.dev>; Mon, 20 Nov 2023 10:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="a5vIAnGU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7ADCAC433C8
	for <ddprobe@lists.linux.dev>; Mon, 20 Nov 2023 10:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1700474896;
	bh=OW5qMtUV7BWNBOLAb9OcWOq06ywhvY3IWj0QAiNGQt0=;
	h=To:Subject:From:Date:From;
	b=a5vIAnGUyR/g3NQWtY90wJm+v8BN3Na2RY5YI3HQf2TaPBSlkYI+PeggyqrgbLem4
	 0+5t84oeE19ylBA5MTszLwAkEO3/IjnP3aRBPguVBj5bZZFQyAFfMWTud8QTsSomq3
	 IYfXTxEYQe2T92unOEzav2mKAc1hPMMEISz6cZNyavTExMjntTya9pv83d/oU6ok5D
	 OyNUcLLj8HyYT1pwiaafvgbODOe85gooi1Z6CSPCdidktNULaY8iuDB1+jfTYC7J4n
	 I7YLWJnDWt75NbeDEq8sDZotqHKku6unzntlpfxyUoX2TtOVv15R9mAEqPy1TffLzE
	 R45C2NwtuytKg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5FB41C54E76
	for <ddprobe@lists.linux.dev>; Mon, 20 Nov 2023 10:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170047489638.10033.8702030247570089615.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 85c03e8d46b954798544f9d4e314c305f982e9752e57c96ba1c6b6686105ab39
Date: Mon, 20 Nov 2023 10:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1700474896
