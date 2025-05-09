Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3CEF82343AB
	for <ddprobe@lists.linux.dev>; Fri,  9 May 2025 12:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746792594; cv=none; b=SYLzwzHeZEw/VJIqhy1NZicR6cAfDKezU5AROycRH0cuxFcKQ696dFM6KEM1Z1T9MUXDNNojPMkGdPPq3cPwckpim6ETie6qODha22tl7FCXjU/gdWCX9JaE6aMjVHGP2JBEcduVl7j8PR9vATHa+aKUcraUi+eBmD5IycTiLww=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746792594; c=relaxed/simple;
	bh=JSsWhMmTnzTujsN3E+HpJ/6ucg/PdyrzPBkM4yhbZDc=;
	h=To:Subject:From:Message-Id:Date; b=Z+fS9Fyynp9uqDyobiU2iiLADERSAuow48CLcjLdyMVWccmk08+/snzYI1otQWlEVpneRaeSiPPSjRXTGoi2+B87HVjG+XuMO/MWZ5RiyCqc/UWI3l5UbbIxzwOhTwianbsxrD8xftCWPVVy43qDCmN8GC94F+hsrE+vT0sHm10=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SRBxKbe8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SRBxKbe8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9C9C9C4CEEB
	for <ddprobe@lists.linux.dev>; Fri,  9 May 2025 12:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746792593;
	bh=JSsWhMmTnzTujsN3E+HpJ/6ucg/PdyrzPBkM4yhbZDc=;
	h=To:Subject:From:Date:From;
	b=SRBxKbe88Q2HEz2GId9RB6qCtHMDu0EN8CCmmQTvIUwnQy6h5hKPFZBjcJoQul0Oy
	 3bWsUPjuf8ONumT3JjcjB1VBFSpreOzTMVQfcmL52ISvimYwhQawa/r76cFza2+ApO
	 xEkDG6p6YIRy408sKz9rA4PfdgJtAUZRFwB4KH9N9ohbKTkChVOVGZdq/yvcSop/+F
	 pre6KgULI6Z4RybYZlZoblteFcpZpjDwil2FXHLHFQCMqQx32ByUSRYf8W46T5Hzjy
	 V30to/ELOjWfkJoFSVQ2Af17bUC02JBICU2EncE/b+XmNR+BPRYhe3wsZArIfft9Ap
	 htV1+yh26LfPQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F1B4C3ABBC
	for <ddprobe@lists.linux.dev>; Fri,  9 May 2025 12:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174679259357.9554.10107252101452646407.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 19f09f0cb48e015b3d28f0d73f11f9bfec86be99df48198ac618d4f45b4dd642
Date: Fri, 09 May 2025 12:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746792593
