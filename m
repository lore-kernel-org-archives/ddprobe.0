Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D1F041E1E04
	for <ddprobe@lists.linux.dev>; Fri, 18 Apr 2025 14:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744988393; cv=none; b=JTdy8LhjzMSeU4KWCs5tFGi8CNO7TlQGK9i4d00eFxTONIKBkPAMGa9ii8tg3dOY9pcqRbaVZx6k9I2QqjTbvD0LStXUVOlDA3F1VlANxXl46jY7pGIdfITH20g0KoexnjyFtrVmcBiRFvISCNPUlW/75UgcstnYTBoC4Htp3ak=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744988393; c=relaxed/simple;
	bh=MnlMzC/EKlRC5rcZMEc2Y3+EVUjB1IMUx7K69Apq0/8=;
	h=To:Subject:From:Message-Id:Date; b=EGodft/zYv7bAX63KQ22sd6ielygrBweSCGgwNNgvZZuqAMB7hQ4ON7zQjVtoGhFsa4szi6qP49NLyhTkwWfM2AAt5Ng4J/I14KaiFWqJIxSwLm40RXdqu+hsqg9qpaxBlpjq7zQYQxFLdxp1xsfUMCT+Gb3AHRLm3N4q3tG7F0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Z54h53kU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Z54h53kU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6737C4CEE2
	for <ddprobe@lists.linux.dev>; Fri, 18 Apr 2025 14:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744988393;
	bh=MnlMzC/EKlRC5rcZMEc2Y3+EVUjB1IMUx7K69Apq0/8=;
	h=To:Subject:From:Date:From;
	b=Z54h53kUr/QhpzAsKx7XUm6iyRIUnEf97QYsgGJGQWguYFe+kkxWaN/D0Lgb2621s
	 3zkCvnc4ImMNi8kS2Ji1p6FaOeAVTL9Mzp667rvc+zAMj/a0y2BwTIeMCcTUY8NC6+
	 Q5aiMAkvCxk3Yo1MhZeH4X7WCFZMq04MXcKvuqIRw0w920Mgv+pE8BXPEtuRuLeBf2
	 g9ZpvGdkSEhLqyei49hWIUHVnaQCRm4cPD3B/Wm6gsbTDHAIBhBfFYXiuAm8nc/d5h
	 xYQpQPr8K/Km4SXosegzp0TIiyn2oqrAe3WWJ6buwZDGQUq4IkAgaCX/oSHYWZblZH
	 J3gzx7hxdAKGw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95DDEC369CA
	for <ddprobe@lists.linux.dev>; Fri, 18 Apr 2025 14:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174498839359.25387.5126756071313879325.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 299ca734e44cae20854d28bb4a7a4f0256bf99e8c403333b9846d63de5cc450c
Date: Fri, 18 Apr 2025 14:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744988393
