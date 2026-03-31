Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F2B4D1990C7
	for <ddprobe@lists.linux.dev>; Tue, 31 Mar 2026 06:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774938894; cv=none; b=lJhnGQjH3IPEWJ/aCmYfxWP6GzPXW0sxNNPYgleB0DenQweS31Ovw5niJOJYJDZ85ng6p1gJwQii4IQe43oAS0lXbdq+Uo69IX7RnIZAqcYz8hdq3Jh/dW+HSZ+2rWGLlgXMhU9xg/YwiaOhe9J8HALIdK3/VvviFkwp4raFVPY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774938894; c=relaxed/simple;
	bh=w/Y1eS6mMazSBMBiQtFoQtQUzJSWztZ5kAfmXP74Fyk=;
	h=To:Subject:From:Message-Id:Date; b=JJaV7bsiYlAIgYyQ7bA8BlWvqCgQUgSPEhj0OUgIlUqLUCmZTlSv9Rd//3d61akGjg1vnVu27+sPqx+xOWhqr3kGopYwF6cJFsxesAQdqi8jQK9ZWZHtYI4+WTEO9zznsC29rucRjCd+X6qWgEuaC6PV+c9XpptMd8ZopoWZ4rM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=c5o2AQOx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="c5o2AQOx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7012C19423
	for <ddprobe@lists.linux.dev>; Tue, 31 Mar 2026 06:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774938893;
	bh=w/Y1eS6mMazSBMBiQtFoQtQUzJSWztZ5kAfmXP74Fyk=;
	h=To:Subject:From:Date:From;
	b=c5o2AQOxVIKvb76XjbeK6gd8UiTIOmnhQ0b5VYzqZ6BFMPK6dbeknkoSnn6/TUSFQ
	 b8ZTRVcFjt4Zi2Mq+n433HrvtEaXIBkweAkMUT1kQaEqMGjsE8VhQBLUq1B3pgE0yX
	 8zbmhoIl/AEprAKCgy/ACwwGeejR2IqukNadNSSST2kjDpBLWwwlXqWsNNzcjsYwCL
	 O4Sgp2dcwXd/EZKLz5zxZzQXPhPHKo76zTLgutcnpGHP4qSijjgkaHA4/6bcPYdfK/
	 8IIrSvhLtRE1eEQq7YWrS0SK+jCU8oK9IAQI81qCHF1FYXNJ94h0w7yGNMjYLEIDg8
	 cipzRvQkGxxmg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9CC23FF60CF
	for <ddprobe@lists.linux.dev>; Tue, 31 Mar 2026 06:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177493889363.26600.4909898684099438825.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a2a0df1145a6a3fc76ac84ce905024f8967e7415ea1ac563a49d340d7c710211
Date: Tue, 31 Mar 2026 06:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774938893
