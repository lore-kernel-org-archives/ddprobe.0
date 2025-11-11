Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 181663254B1
	for <ddprobe@lists.linux.dev>; Tue, 11 Nov 2025 19:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762888794; cv=none; b=gRd1AFzwya/rxCxEOsHfDuA7v0+KSygRCxdyM3dCDRORuW8K3EICHSpo3f6kHmkBklU+gnMHAzEQMJsq7utbh9UYsvn9O77ROylUF09WjjSgfT+SPU5kH/i2Mgv3XqI/j3PFAqsadXXGXtXeVphTvkni5Hr1IrOxSa1wK++Qnrc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762888794; c=relaxed/simple;
	bh=qNZlotPi497fwftiJ3OeEKtmtQiYYAEq3RQo0IDSclc=;
	h=To:Subject:From:Message-Id:Date; b=U1h9kgY3UYhFEjy0EQEGooqpTsCX7TR5G7/NJPSdKy9sqr95LzEMpC5UYhAvkRsazWzFms+fTs44PPZdEXsLipzU4l8lk1cFUFrh5vYOgXuVvL5O7slFyNNA8oKuxKFWC3laZtt4Im//bUw2kYY5snSEkWFvEVfveR9IJTTKhM4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dtCg+x8/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dtCg+x8/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5AC4C19424
	for <ddprobe@lists.linux.dev>; Tue, 11 Nov 2025 19:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762888793;
	bh=qNZlotPi497fwftiJ3OeEKtmtQiYYAEq3RQo0IDSclc=;
	h=To:Subject:From:Date:From;
	b=dtCg+x8/3F4brVQfAWV6WRbZKOG+Y+ED6qa33b1sU01Ai/jHWkmPtuEoI/KkRm8Tl
	 xHNn9eYOFU/YZ1K0ZCKAYUjbAdFszx48JQjDzjorZRQ3I6K/QaNPIqhi28rS+hYF71
	 /yUK6NXxZmGs7N1BEus2O7qyPoY/GBrI2a1O784uN7UgH9QgjB5nmTx06sDmb2S+Hz
	 6x05yz2VNBCNAskCXmwhIE5eREfLUEHgX9E/ZZrMG9D59V7gRHv5BT4ZJasjEtS421
	 WgBQhu/K7TAEep8do4SB7wper/8Rse4Lll0RbJqqHyXE/s+zxeQCQaF/OTbGWx1Y4o
	 ls9MzA+JNAHvg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98CC4CCFA18
	for <ddprobe@lists.linux.dev>; Tue, 11 Nov 2025 19:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176288879359.14349.12665412450171236451.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d2960f40015b0c5bfe462f59d5e2776e46f19d87edf5cb24d4120de6c4f81c70
Date: Tue, 11 Nov 2025 19:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762888793
