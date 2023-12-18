Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A75742361
	for <ddprobe@lists.linux.dev>; Mon, 18 Dec 2023 21:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AWKBt6e3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7B2B9C433C7
	for <ddprobe@lists.linux.dev>; Mon, 18 Dec 2023 21:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1702934896;
	bh=abPaWELOnTfpRfrMDYfQW60/oFXYPqZDdoqUD+1U+wY=;
	h=To:Subject:From:Date:From;
	b=AWKBt6e3q7W+kqmJiYPA4zTX/pqILTM1I3egIoz22TpS0VSd0H67KYzgGjzNrsVVY
	 wt50km8HIJxxG2WYsRc3SkisIdhVub+8BTwPkhXHyj/dGAePp6r4UDElqD/EGZoNTg
	 2Un6KWjI/3Om0LuBbzUnuJ3q3Pqmn7yF0gYjHqZlubtzCb94Lm1/CR9Ev2YKuNzyEF
	 U26BmDPSX1FUPlrK3lqZAWVrcAouUz+kTNxxcRRtvZEoxOhASck4U+OyXJP1lX9GYv
	 rDTIl8FPaghA3b7uLWuDEd9G2KnOHNg/clT/YG+OTnO5O9UVXWPR1GQSwZCU6KmLD3
	 g/KuNusBbompA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5D897C35274
	for <ddprobe@lists.linux.dev>; Mon, 18 Dec 2023 21:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170293489637.11150.13086797601011328485.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 32fc5b79657a6b173254db156c18e1cd8e1c33891f0a87bd070d0ac82c5d9616
Date: Mon, 18 Dec 2023 21:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1702934896
