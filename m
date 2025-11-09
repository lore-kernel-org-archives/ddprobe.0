Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 204961CEADB
	for <ddprobe@lists.linux.dev>; Sun,  9 Nov 2025 08:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762678794; cv=none; b=pJ7ar8r/5nndXjtimwvuCk81H+I01/B6CKj+YlXOUyhRYUYBDsMkFoYhfkKB8+3PSqlKCEvWqx7lWV5E+NdBqQHvoQoBIwkAKLGLnDvGN+deyO+8bhSUjwRJT7yx94cQKBvdo7PI6panSl+VTBAZqzPynlRDQfkmSu7GjAtIi9M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762678794; c=relaxed/simple;
	bh=BgY4QeXqK2v3LRY8tpwBOCxNVGnhet6Fs3Zt+5W8udI=;
	h=To:Subject:From:Message-Id:Date; b=TnQuQA8INIRcOBRgWR6GG3rMnRzWCDc1ZtgoX3eYsPDIL8L5R9HhTmfIXxGWMHZBH7WZl8ckm3EV7PnW5rIjRsQgGl1KvcG+bN71/E3hydzU5ChQ2jc6IhSyWb0j4DRUQmoTnbUvgQZD/lcTwcpAbu8suyNOBoFWdX/R7z74wU0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RGYQVCRn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RGYQVCRn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3F38C116B1
	for <ddprobe@lists.linux.dev>; Sun,  9 Nov 2025 08:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762678793;
	bh=BgY4QeXqK2v3LRY8tpwBOCxNVGnhet6Fs3Zt+5W8udI=;
	h=To:Subject:From:Date:From;
	b=RGYQVCRnJ8OyFu+wtSPin1gPF4J0XL0t05qs+JIv3Eth8aGw7xT3kpZT2+vIzlO2+
	 D9TD6gb2DSqVtxV1d8AkoAywUXxH1hzoBnrVbHFirVYBjmvCba2fjZvlQmnfC6enNg
	 DhpKkHi/kyC4QMga7FVSQdcckODT/KD688vmbZ+9T41JeFUkOpDaMcLtuFfXLGQAIq
	 2dAySZk5505EAxt8um5N+miQAu293U99D3y6acJb0hJilAUPkGf4IODW84CWTU5H6m
	 AfzG7/G7WPGQtYdSslVl5XXS6JsGygdbd1CSmqub64+Q4fbl/wzjQxzsS61TReIW/e
	 LXQt2z/mJbfEg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9483FCCFA13
	for <ddprobe@lists.linux.dev>; Sun,  9 Nov 2025 08:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176267879358.22177.3508351623957706583.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c3aafceec7d188f8a4cd5ef263ce109af16bd1cee266637ad394dfdff8fc3fe7
Date: Sun, 09 Nov 2025 08:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762678793
