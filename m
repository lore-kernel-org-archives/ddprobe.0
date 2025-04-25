Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 389DD1A08AF
	for <ddprobe@lists.linux.dev>; Fri, 25 Apr 2025 12:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745584795; cv=none; b=nDSmd5wVyKWiCBG6SesZD0gx8CM97nThzq95fZdWUtW4czCFDnbCdfDsGKFHMSmAe/oyQKpHe0PjFIjGw6Vkf2yhfXyg8KdAqvhpukdYU1KzqsDdlI3gOzQyvVJezD/xY4svmP3OrwTK2RZsHqjADnRgbOfm/x51ktKtAFeiYWg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745584795; c=relaxed/simple;
	bh=gHYTc9JcjrluEY2DUgXjthc4aXuWLfORru8/bRbF6Ao=;
	h=To:Subject:From:Message-Id:Date; b=DGwpApJGPKZeSedjasSUvLw48BrffCd/Cuo4YYlrfJ7ZFCFYvIZKSTTjMFRGLN2OvJdVQcwbOL05IhGAO3yL0IE4taJgshStbFAJMVjtj/ZD0atw8UuDfqmEg13LmdIGA9PtN6vIFOYTz7+2LwWHSV54lVyqe7UIbqcrGnnUKfk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=N6yZ9Jut; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="N6yZ9Jut"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1A1CC4CEE4
	for <ddprobe@lists.linux.dev>; Fri, 25 Apr 2025 12:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745584793;
	bh=gHYTc9JcjrluEY2DUgXjthc4aXuWLfORru8/bRbF6Ao=;
	h=To:Subject:From:Date:From;
	b=N6yZ9JutNkSuZua+OWZ18FAQEmdDL2CNgogcesWh8a3/vwItxTE3qweWWOQVZF4rE
	 9uztVUhuyyM4QxdpvvL33XJ0bzhPSbLld2rfErZ0951QC5P84GCVKE6wUUcFN/ejUx
	 JkMj+0lAxSPcITxGRNqMg7KhD8o+70xUvSHW+db/G8bxQeHQK1qaZjpXSKepKu6k3G
	 ayUd+xUH8BV9KzNDh5W1KzBft52VjSascOM+bFk4ZEHNXVUPEu2a9AaVGDnl0nBEeR
	 3wAZtr7fiLVFst9aqtRqiNANYrmfPH5WWOHVqY5DwEieAtbtk+FH6NaeGqTsthlzXe
	 9VyI2zyC9BkMw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EB30C369C2
	for <ddprobe@lists.linux.dev>; Fri, 25 Apr 2025 12:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174558479357.2670.16919168665932277798.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c5a8e412d951cfbc432d5802c0add528590268a7ed3079bc7154d12a4e701251
Date: Fri, 25 Apr 2025 12:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745584793
