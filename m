Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D3D52512D7
	for <ddprobe@lists.linux.dev>; Mon, 24 Mar 2025 08:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742806794; cv=none; b=YbVUlO9fP3MrxU6kbt6tD6neseTcqKEYgyyZOzZV1EPsL3yfq1qiwb2w0Dm7L65K2IHdnqiNfwBLWSGHdqwWUk4YZQs4hU74czS7r8UOuycGlcWRHGBfMw67YdZO/4tFDH1p04lR9X845qllfvKB5TtlQ+uwU63HZa694LsPdl8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742806794; c=relaxed/simple;
	bh=ltlJfeW2N/L530O77QCFPjYYre8LkNdWpCXXjHl2fbU=;
	h=To:Subject:From:Message-Id:Date; b=ULSvaV6VOHXA1WmxyAt9GKrW0cH4ylt85ek/XWEcdsN3NZSxN9YNkfYW2y2nttAAJ3aU7ZFIiXnNWeBaA0pMqcqWED4/Wvg9IuKhQPGkdVaIghsE0NllhTfQ4vmYftRQGH7zAQqCazLjOPNl4qCOC1GYH1c1FQE2tuHudvpo8KA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dgxAR3P4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dgxAR3P4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B3FF8C4CEDD
	for <ddprobe@lists.linux.dev>; Mon, 24 Mar 2025 08:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742806793;
	bh=ltlJfeW2N/L530O77QCFPjYYre8LkNdWpCXXjHl2fbU=;
	h=To:Subject:From:Date:From;
	b=dgxAR3P48JqY5URcOVP7tKKz7UT5/+r+FCJ98SMIJsSSiPhTb3f9tDQ4hOuPjR85x
	 1yTRD5Wcn7Z7V8flRVFjd4ZrHQ7M07FNVKoe/yJr3ig6qdxWT75LXVo31AyfhOFPMI
	 DvylRyaonpLO8NEV/VDoJlVuCmDCVUGae5j7HjjbJmumLQb6mkhxHZU7toKmMAbkQT
	 n/0WAQUgMV0FTeOx7D80GmSobsEz6+ZPviMt5LkjiwM51yFXEc4bN8u/gp2UNc+wt2
	 idgI2p0Jin3QV/Oya4c5nZRDG6OZE1zt7s9vTG8mZGM82OTXbAzvCoxIUg0O4r64p/
	 PKLZFvOI/s4BQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9DFA9C36002
	for <ddprobe@lists.linux.dev>; Mon, 24 Mar 2025 08:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174280679360.30278.9092000402701730424.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5508d83367b4e35b3f5cd6b0c6037d7b2f3efb6f42cbacb3eec7e89440211fbb
Date: Mon, 24 Mar 2025 08:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742806793
