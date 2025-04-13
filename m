Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5B67E2AF0A
	for <ddprobe@lists.linux.dev>; Sun, 13 Apr 2025 03:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744515595; cv=none; b=PaMJivKuqIjAVPv4NmVmd+0pbAZWOKw8kmUkejeGdvjBagqPd/x+1uG4lZJr4gxTob1QLAvKiiARS334eXry34wHsd1stZhrC0MFKvOOczlwLwDy2n5rii6laIQqx04NHrvFIzCrHTew9RH2ejKbAvEiVdALYGtPVqvhutd9KcY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744515595; c=relaxed/simple;
	bh=3zPWgEO4tWxOThDGPCOi+9xN7IUqJkSWLWqgwGTKGik=;
	h=To:Subject:From:Message-Id:Date; b=e7UtEkrZExS32RM0GTqq5aAuTCBnydq3zYy1EqcLF2dslpftSMnVz5UAJAnWZ4pDm24sRCPaPHNI6nnC7fawbtJv+g4yUKhzE+gCUxKCmsc6KClcb1e/Bua6QOIvoi6pZRjpghw4zYdUOJQ4JHYs8c9GQ1i+557FEbRQAdbcZzY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OcJv0Ivn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OcJv0Ivn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BAB25C4CEDD
	for <ddprobe@lists.linux.dev>; Sun, 13 Apr 2025 03:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744515593;
	bh=3zPWgEO4tWxOThDGPCOi+9xN7IUqJkSWLWqgwGTKGik=;
	h=To:Subject:From:Date:From;
	b=OcJv0IvnT96jtY4fzRw8SLR2EIeZyjv9Wk728TofPcnvZn8d/a5x1ABmoubqzpPm6
	 uyLN8k8PSH/+3ECTTJFVcdj/CxkVAkVlGCjGf1Uiofo26iaYl/ihHCRp8ARELrVL3b
	 xC1uRUN3gM7dW7qraywBddoIZVv9kZprpGfeve6DaPtCeEwzZcrvgw8EPWx4OZqq7C
	 pHo11ThcFK4IyQH43hPMGrPUqMEpLyliH3Pgqy9BlWsxp9oPxSERQNeJTfaNZhoRAJ
	 dQ1MxUzfp0nCTseREVsmGxXpDkOl6gZygUIyrNE6um0o4IbYMw15hQrqk+MwMPnoJp
	 p2V8o8GgAtm/w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9AAC8C369AB
	for <ddprobe@lists.linux.dev>; Sun, 13 Apr 2025 03:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174451559361.16803.13512712975410002002.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c50090933b363bf2e3ce903550f789a1e593e69544e2920bb7c7484cf11349f4
Date: Sun, 13 Apr 2025 03:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744515593
