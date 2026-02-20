Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D321E32E138
	for <ddprobe@lists.linux.dev>; Fri, 20 Feb 2026 06:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771569893; cv=none; b=UapyBbrsCKvgcHnh/rDcxOJn6/HOutiD3aYNoHBa47qCcgiE+Rb9BqsaMn7znUJmIoXiBl1dGpxH2adPsW85sMIfL11YqSPXPc9nUO5Q+heRTwnAslX77e3gLWW4ReB2ydM11ZQ5j4slIhDqz3vV3bW8rU4NHS9Uu3FhF6MYruY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771569893; c=relaxed/simple;
	bh=s0DFt2/12XAi8V9Ot1iwPy+j30kGvQZyMqdQfk/ap/I=;
	h=To:Subject:From:Message-Id:Date; b=e3UE4qKtEKnFTOCCpt7/1zWBprCFEXH2VoumqYvkdSAH8Ny6boAqq8PMG6ckWChzwwHTR0qeg09W4zjFThv1TAbR7ukiUOnredx1pYH1Ct0HTqeovbjxkgO2VcOnsp0cg6ngUK8wfFrVFct4p+i2jGSmung1VdhIgYl0DYmvjrE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LYJW7j4P; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LYJW7j4P"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A351BC19421
	for <ddprobe@lists.linux.dev>; Fri, 20 Feb 2026 06:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771569893;
	bh=s0DFt2/12XAi8V9Ot1iwPy+j30kGvQZyMqdQfk/ap/I=;
	h=To:Subject:From:Date:From;
	b=LYJW7j4PEgqtjuXk9s7FieSf8Wl4frLLJIrTKBTwWFCsoA+xGj48QCAZXKKmjiiZu
	 SC++asP6h2mzBfXzXFP3qp+imV1s0vX46fHdIpYFl63P0pxKYP3AMdBZW/A/3oJtUg
	 jL6OuFl2X9NCm0PQQmWUjKMbGc+06MopWZ6iCbJDUOWXL/mAEZjvZS5wDcFLVw8U2B
	 SeLjR+dHOXFDFBH6zz6D4fK+Mm8kffus+VDJrGzWP+2SKEEf4MRcjigDfjUWXrqwqE
	 UopjuAXrik+0Ixl7ytt0vRgOoiusy+Ite7g0QELmZQJX9uVqo5/8k+K6xI/kuXozUZ
	 F12Uv9FLb9QNw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92C73C54F5D
	for <ddprobe@lists.linux.dev>; Fri, 20 Feb 2026 06:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177156989359.16045.2820497129429711633.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cc446da8b30651e0fa7bf451830daca574e3ae9f63b3d263095d08e2c060295a
Date: Fri, 20 Feb 2026 06:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771569893
