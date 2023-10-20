Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 03D671DDC7
	for <ddprobe@lists.linux.dev>; Fri, 20 Oct 2023 16:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CGs1DoVZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8844FC433C8
	for <ddprobe@lists.linux.dev>; Fri, 20 Oct 2023 16:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1697818096;
	bh=LKHwzKecYEnyK0wqpLIy1kJBXIKRdOFs47b1MjZnaKc=;
	h=To:Subject:From:Date:From;
	b=CGs1DoVZsClFKvg9T/pe4O+NVCN5JKNL0+DhYYBq1rWVkXiRO2ntg1LzsztQpTmzi
	 qu/z9AJ9jRQ4fSc6LHs7IlDaSP+MWchIgzZRLiK+qsCpylQuSGsKm7p2wbqqrmfsnW
	 13GzWHdCFBSpqXl9O4/D6S6yM50a4/hVyct1DLuK+gb9heNnDuFOudpmTgezXc5qT2
	 BFLfjCzT/lgk7igw5tRg2Dzi2K0mcwkKieTKLJPCPsaFIq1Eg8+9LgEW3H+7IAtumt
	 4Rw/EI6xJNB0R4JDuMf/2Ra3NGcHibyOiUSnpMk/yHEGpPg6RnWUsjOsvlDtuMBWeN
	 9OA+Jxn1f+vBA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 66AC3C0032E
	for <ddprobe@lists.linux.dev>; Fri, 20 Oct 2023 16:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169781809640.23105.12362930328151596592.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8a25d3b4700f6822dd3b29070f70cdc68fa77edd4a5e0b99ae37b275c75f7886
Date: Fri, 20 Oct 2023 16:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1697818096
