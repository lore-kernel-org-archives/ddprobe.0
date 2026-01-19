Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D1253171CD
	for <ddprobe@lists.linux.dev>; Mon, 19 Jan 2026 05:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768799633; cv=none; b=BQZDqCIRgS5HEKbyDV9AgjrpqJyk91lItWaGMyPMhCPo1W3hv2xFboyzf5j9i+kPErdIt7boYk7ZAeuyJFc1vXX+BgGQnb8/dgOP7Dv7WfQrU3dV0Uhc6Jt2rFGIFYi9Aeg9F/xpilgltYd4sA+MwQMH+UqinF4XRjNlOexzHRs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768799633; c=relaxed/simple;
	bh=NeXamZikUzm1DHR6sxEKkxxVfRqkM7b8o1Ren9IJtZo=;
	h=To:Subject:From:Message-Id:Date; b=FkMZJ6xD8zVa6Gcgvi7EsmxJq7JH8LVYUBM5+GJ6imlzLED/gykjKQtsY2KtU/M4UMqlbVKTC5vZnkePsp2zowRSXZO3oIQYxE8hok0lstH3JzyxzIywL3+mfCmueGJ6xhAsMPAY0SQDLLDydd1PrNHiLIAIrBxCwYcoYKpAo8Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=swOkfXac; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="swOkfXac"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3003C116C6
	for <ddprobe@lists.linux.dev>; Mon, 19 Jan 2026 05:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768799633;
	bh=NeXamZikUzm1DHR6sxEKkxxVfRqkM7b8o1Ren9IJtZo=;
	h=To:Subject:From:Date:From;
	b=swOkfXackwHSH57Dhk41DslP9sr8qcuVYOL2PiXo/lOYrYD0YiZOk3AOq/ldo905C
	 afGglwFgoAgBcJ+AS8zfPgvL7er8BzGUDGECfLY94Jm6JJi5ybbuTTVCFqPKuycOly
	 Ar2L5PoiCHVgCPcuTlQ4+Oe655Biu5/BrVEeMUHbJgZCyonQEcChR1tP0qVQNivqUh
	 ZCpOdS5WU++weBEb/TQT+spgf7vwPIZr5SX43UVjDWbRWjQpauN9Z7ah4JismCOagu
	 BBa8ckqLrGemVSq4/dP5Fgm7BB6GLfkg5O0OZ8Hm0EPLq7wUYCd0FWJM7xbDKa8Ku/
	 NXqWgHrN6TOUw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90F81D4A5EB
	for <ddprobe@lists.linux.dev>; Mon, 19 Jan 2026 05:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176879963358.5452.4619341704033242558.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 67cf77a95636389e106aad0d199da11ac4f72cbf5a0d8732a6e6ee4678d7e9c4
Date: Mon, 19 Jan 2026 05:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768799633
