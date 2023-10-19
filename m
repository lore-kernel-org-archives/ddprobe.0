Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 219D28F64
	for <ddprobe@lists.linux.dev>; Thu, 19 Oct 2023 09:38:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FvTkniQH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E7D92C433C9
	for <ddprobe@lists.linux.dev>; Thu, 19 Oct 2023 09:38:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1697708292;
	bh=4S9//s7J/+Q3zhQlEN429Tzt2C94g9EBH6iMK8Tu6to=;
	h=To:Subject:From:Date:From;
	b=FvTkniQH4BOhya4RJpASVj2LiFOqbbZ7ZdTqh7lnIhBEs6vGSYmOJzSwmLnq6CxC0
	 RPyh0fp4vnRTNj+02qwNym5Mzd/rCIQAPwBVpy01TZnPulcs4BDr7vJWF5L+w4ABky
	 W5tPp0L1AzLGb5bVoeUox+yzPZNECPTfyH+kkxSKUZtEoq0mzhDkTwi81PEfJco9wS
	 IeOfvdmMF2Uy/4saGg0TZOTASYsKZCoTmK83twnvQs1FytLwBeaow5a3XRQmQkfdNp
	 A5XCVkLLMK6na/50N5E6+MSHJphdIjRKsXsxVUoQG7cBAxbdUFRY+2hobKqpp5ck71
	 OdT8GZlInHTeg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CA71BCDB465
	for <ddprobe@lists.linux.dev>; Thu, 19 Oct 2023 09:38:12 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169770829281.2245.9147114369253423956.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ef098bfe276ff8ba1314916a49688163d64698ee65f4457bdbdbe630a4ee12d2
Date: Thu, 19 Oct 2023 09:38:12 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1697708292
