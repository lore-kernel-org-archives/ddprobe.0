Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 13F96220F49
	for <ddprobe@lists.linux.dev>; Mon, 30 Mar 2026 07:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774856694; cv=none; b=XysmN1HaQIoJpBrEtG7KgbqoLUlNMG17zPwD4AnFnk4fzvExc74ry2vVT28Bvh4IRyLM8EVYI0IZbTklnX+SUchf5Os/BAZPQBUD2Ky6kO1syZvFw0RJOwrJkg7R3cRB7i8X2X2bfl/KD0QNQGLLvvIm7Zk0d0/CN0GqbsQpRLI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774856694; c=relaxed/simple;
	bh=5+l8YIfJtha7LS6xsEN90Fo6n2KUsiV/QEEsafsQVq8=;
	h=To:Subject:From:Message-Id:Date; b=bGEltQqr7RRrBBytLkTwsCp6RPVBFnwnwhChiGgUQMat0ru8u/j2QrUd6Bka6aH4V/FVv8rkFb19lC8vLFE/Apf+It6dk6f1qLZFILivS0zc8y4e/1pwVYVXYkgqWY2S71ma87x3hYLLzPjz678zEYw6lBNuxDd0E/ErLCCg5vk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Rc+0eBQs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Rc+0eBQs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D314C4CEF7
	for <ddprobe@lists.linux.dev>; Mon, 30 Mar 2026 07:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774856693;
	bh=5+l8YIfJtha7LS6xsEN90Fo6n2KUsiV/QEEsafsQVq8=;
	h=To:Subject:From:Date:From;
	b=Rc+0eBQsuNra34jHUM/ktXEfOzURT/JZz6bRNUnoFAI9NGhOm1RsZp2XzB6DzJ8MV
	 9QvSjsA9y7IIEGDtIVZwC3R5nHvTn2ogm8mKM918UDwInZJfJL5T2K2cukrKGIcNAa
	 xW/LeEhvXV4YXlU2Wlqogt1tcXAMjyld5qSgpNlwXQJqGMM/sS9HvNLcwfuvIQl41X
	 4uFpIZygf7ljkSEKrTQudTalLi07i8gggkDGDZwywN7iTBM6JyxFvAxEVWC/PYS8Sv
	 A5MxzcjGpxOSAtyA2Giw7vMfWk9aJxCVcH/N6QQabrFtDqIORl90SEtPET0q7HE6nE
	 wmRl8cw1hOyIg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 931C8FF495D
	for <ddprobe@lists.linux.dev>; Mon, 30 Mar 2026 07:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177485669359.937.933203837777101760.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ebd70d370b26a6542e532f71383802c846a57086ba2e2e7203975d411db01094
Date: Mon, 30 Mar 2026 07:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774856693
