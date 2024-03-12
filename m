Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 099547D3F9
	for <ddprobe@lists.linux.dev>; Tue, 12 Mar 2024 20:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1710276497; cv=none; b=Wislu3EKr6jl1T5m6tobj5gsAjG9b2PSRxZS1v+1FStRcNwpepvGg1mIEHLaGWNDfJf9h5XKlxgdgFbvt9SgPqTpi9awA+yz7sov6AlGQb4pfC7o24VR9blvEn2vQuxP5uPZYz/sUTze+gcApkry8Ls0wu3e3Vu89Rz2kIGu+UU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1710276497; c=relaxed/simple;
	bh=w7uBFC3Xyl2h9yCYsLMr3Gj5XZOyu45kGRQpvf76xyo=;
	h=To:Subject:From:Message-Id:Date; b=a85/6FbZNkDAA0RQwp+R/DPcKEjLYxAJk80mDLQ/tc3lFKQU4iRGCuvm88QhNJJ71MonUqRDwnrN/m663QlSQSxwlkkH32A5ZoFwjkoSMHzho5rjDNo8UZwjI2WtcnG9N/YeaHOGdiuAh8llmcp9M7Xs3zt+jLQahJIxbErTi2w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZF+5LyAg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZF+5LyAg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 786ABC433F1
	for <ddprobe@lists.linux.dev>; Tue, 12 Mar 2024 20:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1710276496;
	bh=w7uBFC3Xyl2h9yCYsLMr3Gj5XZOyu45kGRQpvf76xyo=;
	h=To:Subject:From:Date:From;
	b=ZF+5LyAgzdSmJZUqaBHEkedQ9QxIjTRwBkjIoWw9sW5fRLD5bcqFAQ1adO84bdThV
	 eo3zRp3ZabpMk5YnDSrhA6m25O6rZ5HlWp7naYkxjOowhd6ieuehXYHZGVgLexHnyS
	 vUBLuInslreK7N1rlrdxkN2UO/2/fifC7MoOtvYa4ymize8FCYqSi27roGW7+2jAEy
	 e9MUIGRuLUnzf6QfGIHWpEoX+2xxH6ThIjn7LuqQesT3Ld4F3c3w3G2sTkTVTZak2s
	 KkWryV1JDQYP5vvC9UjZIDiYYctUYoqTiS2c4UXSXr6RbUx1k26iGYzg4fbqtvJach
	 jy3ieiluG7XdQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5FB0AC54E5D
	for <ddprobe@lists.linux.dev>; Tue, 12 Mar 2024 20:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171027649638.14673.17254728817756149049.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4e1033eb4eb20b2a49ae1d8f2f82bb6cac950b9d1ee5ed490515feab9ee4a458
Date: Tue, 12 Mar 2024 20:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1710276496
