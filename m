Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25494125A0
	for <ddprobe@lists.linux.dev>; Thu,  1 Jan 2026 02:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767234834; cv=none; b=uXlMAPnsq8cyNlQBcpC15C1+0K2DLsBgeS+vVni0JB7cJtpulw5CG5LNEsIeWfIgL8EksGg9Roj3WhD/OuPimosu5Uvhc1NASTUNQmqNGH0kROrv29UyVaXOE51sXONBhPNVycfXhXJhp+tyhv8l1KQ13NiP39oRXwfEfa9OIFk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767234834; c=relaxed/simple;
	bh=lbtIHC+/qWFlJ1l0McguW5utJCfRQ6BEt21JUAree6Y=;
	h=To:Subject:From:Message-Id:Date; b=soyDBtG1mpLB8wh7jnxntlI/1urhC0LIRTYlcAUigF2sC8jbLlskhIRy1Jl9BNz1QPuPl/8czA61aIlq85S5VHmPFFMal0wIsYSw5OeCjJG2sbOWUE4O2v8boBkT0AJSo/+WH4X9zxSZ39A2p3JM7XK7v/H7fKbVhAbGrPtAxmk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=c2QTn6h/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="c2QTn6h/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5909C113D0
	for <ddprobe@lists.linux.dev>; Thu,  1 Jan 2026 02:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767234833;
	bh=lbtIHC+/qWFlJ1l0McguW5utJCfRQ6BEt21JUAree6Y=;
	h=To:Subject:From:Date:From;
	b=c2QTn6h/8hIxseZs66R8j2KFq2G/OgDFqpSG/Jve4UpJJFSR+WXwG0VoLiNDL0KCE
	 2Js1LPjgxBkMeA/SgljyZOrQVf/TDGJ8SLdGlb3uarTYDUTS+AzXw9nSNYH6TKesLW
	 zT3QADRj9t665ndxD2zZ0s1ni7z5P+xPOupo6nu1zIFqCN+Pgatlfj5F/K/2fs4fZC
	 1qvE/SBcUEF28fgOmOqGdSnhsciw0z+POVAArdvTpDrjQwd2FWh8Kw88ZMeUpyJDpM
	 osnb5pfljtVH9+w08xVrgzNskeXSiJ4R31DsFltRY4YPLF7NIMGIZg1WjsG59/Hk4F
	 V1vP7dNhO4P2w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92115EEB573
	for <ddprobe@lists.linux.dev>; Thu,  1 Jan 2026 02:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176723483357.4129.17845057768583474081.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e67873f100f0abf94daed8132c8c6150a071d52e210bb26f6b7fa32024cd38a6
Date: Thu, 01 Jan 2026 02:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767234833
