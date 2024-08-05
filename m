Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0EA3F13A271
	for <ddprobe@lists.linux.dev>; Mon,  5 Aug 2024 06:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722837954; cv=none; b=TNaJKNBxfdQjGevsoC8Uq2TYLb8uYYlxKUpXUr7uDwPJstBfLaBg/sUHdS1ileYUNWryWLlxRqGWeUf5RNGXHvdywupg9O5ygXmazd+3qIn07NhLevuWBLFtXum4KURTUj3xpRt0c6hyxlbfqW3gFn100KvuqLX72Vl/ImslIEw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722837954; c=relaxed/simple;
	bh=zm+vWRQbuwkc/Bw7nbgMzdL2U5qCMZQ/UMPgVlG+0HU=;
	h=To:Subject:From:Message-Id:Date; b=VKxmAg4CzngGppRQ+8Mz16Ichpu3BpLI/czGm3FRiOqpKWGBjSgdQpXv13E1pvvTgmTu3Tp4jovmOuHWYJL6gvsHYhJTx8SCqrk1XRKyaAMillFFsP4Fw26G38Em8cnRxPpgkiWtdESL6qwMHZgsnJsXegjmi1f62MxWsrL0LuA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ECDQkn2L; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ECDQkn2L"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF689C4AF0B
	for <ddprobe@lists.linux.dev>; Mon,  5 Aug 2024 06:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722837953;
	bh=zm+vWRQbuwkc/Bw7nbgMzdL2U5qCMZQ/UMPgVlG+0HU=;
	h=To:Subject:From:Date:From;
	b=ECDQkn2LNXjmhi1obUWiyC7RLhUw/LhJ49BbnuLd4o/LEgliHT9AeSGXcl+FzqjiR
	 Jg00HyJAZgXtPBucJv15t4rRCY7iQgJRznl8XiogAr9DeE8BNQ6G69noJWaPlIrgcn
	 D9ahTHhAC9iQvJ6l9XOVuNcXHqcg59V4M4q5fMU+RLh2kL6mRONk/2r7zXlrrF4+7C
	 flnnwdbG9UFbz1Jmf+pv2zcBveUBpX723gHv4HgXIuIVkQwbN1aKQ2qSKGmmOE93Z2
	 rgEtxiuYlAmZ/0LVx9f+4q9z84GLxRTWf5HuSwIvQlcHEafEdKB+dXaXwpZDTKAoRO
	 JvRuOYStuFhuQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 979A7C3DA4A
	for <ddprobe@lists.linux.dev>; Mon,  5 Aug 2024 06:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172283795360.21188.8453553948500729678.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 261fd48e7ded16fa714adc009fec51f42fd2129509e6cfa2b302c5aa1dc8a903
Date: Mon, 05 Aug 2024 06:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722837953
