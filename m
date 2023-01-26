Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3115B4C9B
	for <ddprobe@lists.linux.dev>; Thu, 26 Jan 2023 20:03:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7C96C433D2
	for <ddprobe@lists.linux.dev>; Thu, 26 Jan 2023 20:03:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1674763385;
	bh=EwI7Y37o86mf0NG07MN9BH4PDEpa4nmhU5aTl/9vRh4=;
	h=To:Subject:From:Date:From;
	b=Xs2bHz0A3zrpYdMpDeVfTnFUyXSB+xcUJZG4RZeXT229NpG7NIF/gGuurodyXqd+q
	 XXmysCnsK1Y/zdg8krEXvjifWdRz67JS0ZLS3P92WJSbf0tUD9BSDIpNZTO9/JJWd+
	 ftyAUXeJEFpiI32/DKEP4SY7FK0M8RFapB54K0grC4HygXaar7qbyaA56/3hrKcD4o
	 le3W3tYlNS7SIx8LMykX/813RDAylIBHtRNMndHTZ1FXSFdmhvI3dRZw4Kg4QZZ/Fy
	 Lj4X+ypkAdVGT1jMWsmBxswAQhaE0m26u+ITOuUPgW3wPLJixNiSwDDVT4hXVsetNl
	 4SLMxMhPhp50w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BDC2AC54EAA
	for <ddprobe@lists.linux.dev>; Thu, 26 Jan 2023 20:03:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167476338576.30629.14188306640687805926.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c3a23d9c23ce700968754033c1ad6a45a981fb92222586ae3504dc93918495e7
Date: Thu, 26 Jan 2023 20:03:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1674763385
