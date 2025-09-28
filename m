Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E9221373
	for <ddprobe@lists.linux.dev>; Sun, 28 Sep 2025 03:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759028995; cv=none; b=t3NBQ3NGrKidkgGgn0BYqMnm1Pdfo/kl7uWs3P8vqIypHNcMTr5IEJEzMtHQQTb1elQNNhjpMOUxSwgLpH2yof0R4ywlHU4aXSp+KgRsA8BuawXD72uKyj1GM04dgF+zIalwyV3eI0ulNEhpJpKM7jTLenhwx962XuR4Rdf/PW4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759028995; c=relaxed/simple;
	bh=e5dbOlBwg8gACPmdLSQ1Ms2+8JbYrnXxoQy/kOy+cQU=;
	h=To:Subject:From:Message-Id:Date; b=LR/8MRalG9gMjtwJiNOsV6rbUwPwmdqlOpWQoTGR1L4yWMlMLIS3+2x7yiPBhgnrx2PomzGEvSVpHjSKsI2Xq2VcGe8HHHztvXZZ60rWzx5ACNJHT9tVX3OgCe7hmPMSjfbU4QKXV8wYhpsCDQU10cle9XNEAmd8tE+BXa0Sp3g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZBrOmekH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZBrOmekH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4688C113CF
	for <ddprobe@lists.linux.dev>; Sun, 28 Sep 2025 03:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759028993;
	bh=e5dbOlBwg8gACPmdLSQ1Ms2+8JbYrnXxoQy/kOy+cQU=;
	h=To:Subject:From:Date:From;
	b=ZBrOmekHuyZeZFHi+ks654+bHnApQCkbvqJURBPp6uJoFC5lPZqRrHZh9ntC6130w
	 +zX54K3oWqG2s8JGqJ1GdXahatEqqvlLd67MfZVQszHEonPoZ+cxrF0N8yaVVXLrc5
	 aOO18gsKj+jK0kfKPpeKV5LGDzLUa4XJt9zunBNvJXH7Xk5gUHZ0vEaxUqE2IIog3F
	 q1g15kWMfJLBWn35vYzZymectuRllkBfZqdpMD3hFSLYhDROIacTFxD6L79IE5vLpV
	 TS7dqpXuqwtUaV0Gax8C1Qf7Ekcsnh1h7lUJHYbwp4egH+qU5z6wsZ1wGtduK/DaF7
	 kSfLpUNOE9AsQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 939F9CAC5B0
	for <ddprobe@lists.linux.dev>; Sun, 28 Sep 2025 03:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175902899358.10864.8010214992724020169.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3022adb057bd65d9965a897e950041e305e01641f3a88cf91281bdda660cbdd9
Date: Sun, 28 Sep 2025 03:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759028993
