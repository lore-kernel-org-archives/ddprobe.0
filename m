Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 286AF13D638
	for <ddprobe@lists.linux.dev>; Tue, 30 Dec 2025 15:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767108234; cv=none; b=rCEnyY9KOF4V1NC6Y8Ry9W5K74ryZwni5dFUtPsbDB8fG5QAQU0nFbaMCXU2k2tsQxTgzgXXJ7my/7q9nHBSXOII2XeL0joMz6wkgl0jnjnveBU3FN2DpMoxqcczJ5c2XMbs8fCuy2zJEV2sEG+iFbyLRYucoH+vR6zsjySPcnE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767108234; c=relaxed/simple;
	bh=cNv+WUmHX7YSwuL9QvmEj+N4KQTizCFyJ3g9z8mztZQ=;
	h=To:Subject:From:Message-Id:Date; b=Q7d42jrJ5JxSDR7O1r7L9Ndx4N120zVb/droerA7HYU2wlFupLgAwlwOAhK7My6Za0ixHIucRIe4Q36GLB8ei7Otp3U3DKU29XqcyUCmdTIVNaXZ97oZJO72DHRwB4d5HHXK4Gy+cfxNSZTdRIdQeCTWVtHEko4x12iimzUmF4U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ENtkw7Tx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ENtkw7Tx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A19E8C4CEFB
	for <ddprobe@lists.linux.dev>; Tue, 30 Dec 2025 15:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767108233;
	bh=cNv+WUmHX7YSwuL9QvmEj+N4KQTizCFyJ3g9z8mztZQ=;
	h=To:Subject:From:Date:From;
	b=ENtkw7Tx6XAeIjmYqr97p0WS8y7AGqP0pabHbLFEY5j+K/UhL7kfuWQU+/sSZxpxt
	 T3HqPeeZ1z0/Q4gEaYJAxFabNXyNSrDnNXUrFDr6zWuDwe6cAPx/uaz6gRyfMbZpP4
	 0TOJRyqihklL2svZBqKBHtpX+sTXWG7n8NpzoYnK7SrfyEZGZiLKXm2uSwn0f6nmlL
	 tljDNavofdshG6saXte8p1YEDQYPo3IQoW9sJ4gPTazT6u8rUYnOTjSbC617AJLCDG
	 fsixLvavKT7PrdD4zKCH25rUgQZD5BnYVHylgL2Af4tT05b/lZOk1zDX/ZyAWgoff4
	 cetCEaShNq3aA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FA00EE0211
	for <ddprobe@lists.linux.dev>; Tue, 30 Dec 2025 15:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176710823358.23798.8575517783313344186.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: db1805b048d8d83b46fa0c99437f924891e39fe72a20cb29b106a43e94c444bb
Date: Tue, 30 Dec 2025 15:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767108233
