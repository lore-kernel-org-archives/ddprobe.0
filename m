Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 200C02BB17
	for <ddprobe@lists.linux.dev>; Fri, 14 Aug 2026 12:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786710034; cv=none; b=lUC9tel+bvrfX/NK4InvVz9QifSUshU39qCY/qqs21YFmorID/kQYVO6G02fFZNoIZYQuKmYoA6BcasoR8oFfcscE1fCkJ0zGPl0ulOU8/k+jBVZ+8P0HPvKFCeLMmpqY2tA0Y2jVZl0+dL8cN03hWkvQ525K+tTFKY10kateiA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786710034; c=relaxed/simple;
	bh=6cK7wStPEsOE25w40Q5/Rj6pUjtKcX0c+9Xt5bb4S3Q=;
	h=To:Subject:From:Message-Id:Date; b=lN7TXMNhpe2A4g9om9OXgf6bxmB+0f4YQDa/KQKzwfmMm9OpyMWhMOVjW7TDin+kBNv4vgw7A+6hMQEcVvJ5979O/Z/dccEH8Xe4yTV4q8VqT2iuMNY7WJmy62dqtlMsihEwD56sxadu8JhTXXZck9UHWKkx1xjlwD7XBaVAaLM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oax0w//R; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oax0w//R"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1AABC2BCB3
	for <ddprobe@lists.linux.dev>; Fri, 14 Aug 2026 12:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786710033;
	bh=6cK7wStPEsOE25w40Q5/Rj6pUjtKcX0c+9Xt5bb4S3Q=;
	h=To:Subject:From:Date:From;
	b=oax0w//Rptx5N+fNdjhh+H/W10jQl+vtAb+Nag7SyTun9suZ4/fIk33tA9GFtU/Cb
	 4RqF0SlpV8qWVVG128siyd3AkzI77e6PauVcU0QaS+vCOQHCC5MtX3m3DfAg6Oy69L
	 BFR16OzHNQv04py1N7/SeGy88Ul3oz5O3MmSrihFiJnGJqy5Ow9qdZ3+jMf78BdKZ3
	 AuD/2yPh3EIXSh3eQiyMXdnwUzzzOy6Vp4OsGi2HBnIp6VWV4XXW1FP0EKJQ0iClH0
	 sCygkrMjMXKPcUcFa4quqbDn1SlwrWdrshhRCOkIbpdMF+3yd9W2tjTbSEXIVeqWfc
	 8Z0i5SY8YlRyQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB5C2C5CFC1
	for <ddprobe@lists.linux.dev>; Fri, 14 Aug 2026 12:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178671003369.10673.17427494019227025800.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2049ee594ee901250a4761d3947d7c0ea08e7f61b4998af796928ac82cf25096
Date: Fri, 14 Aug 2026 12:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786710033
