Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0291A4878A
	for <ddprobe@lists.linux.dev>; Tue, 21 Nov 2023 11:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="u8gViQEs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7C2F0C433C7
	for <ddprobe@lists.linux.dev>; Tue, 21 Nov 2023 11:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1700566696;
	bh=CqQTscDcO3wXevL+BZGokteX2cczhMZNbRTCZJjJ2aI=;
	h=To:Subject:From:Date:From;
	b=u8gViQEskdlP9AuPoVyIeo+vsIVEZ1863LMcaZ+AA6PK6yODGeg53NjhAtvUdDt3L
	 5QXqtf5dmTIiIGHBu1Mlynk2vTNegjh7VmYZ/u59hsAqZzXk0ugjx7CruYwzlo/M1m
	 JqdbAymE1nTKQsyjy69jxPS6fIaqp085lfbtrPsYAlCSmIFnrCXccO3MgdGWF4JmPT
	 CtSVzG1yj34MeuQgB6+7zX+LtMtBc3VnLr6Nen/MGwTCVqK13lNShcBGq3qdJCxK1n
	 L7IgPAH+pMEb06RzrT4gWG6EQiSD2cWfSeAySQCp3iOHTZY30bZFi6Cb7KYsSKzVS1
	 Na4+Q1WDRfmtQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 60C05C54FB9
	for <ddprobe@lists.linux.dev>; Tue, 21 Nov 2023 11:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170056669638.2922.3229878307075306089.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ed39b0d01849e73368e13810c9700eda70c3acb3638a4924638d5bea59d8b56b
Date: Tue, 21 Nov 2023 11:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1700566696
