Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1432E40DFAD
	for <ddprobe@lists.linux.dev>; Mon, 16 Mar 2026 19:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773688494; cv=none; b=S0aOG/uqgwJnY76voAbxbKTIhu577XivKhUvv+xozihhsohNMXOpMh4QmR8IEsW1zQEjXz0cI/LX/y0X6aG1Fyrc+l1wSaJIgnEue0PPmETvn0rFro2wxxQ/7c/25t/YWKBC8mdt6RV6UhrYRUYEJBVIcP1L5PftfY66EmPxXBU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773688494; c=relaxed/simple;
	bh=zl/0cvHFP8XMTAqdgiyA8HrPvmSfhBvgvsM59dxVfIU=;
	h=To:Subject:From:Message-Id:Date; b=P0BFDsv+Q96H7ydfO733jvVWGp1XC3D/WOA45opkwSyPEa898/oeuGwOgrqiVIyBRc6QDzK0o/twIhl8NppCKUi9EBS0dTxwCnu8C88BqP66Bzg5Rx9Roqti+lAcl3W6dBbJ7iuPCpfHtxJmtun/PZys9OQxETm+4RbGtShjst0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JithYEYW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JithYEYW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0F23C19421
	for <ddprobe@lists.linux.dev>; Mon, 16 Mar 2026 19:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773688493;
	bh=zl/0cvHFP8XMTAqdgiyA8HrPvmSfhBvgvsM59dxVfIU=;
	h=To:Subject:From:Date:From;
	b=JithYEYWoJy8d0Ab4fs1BvHTIBDTEcQ6stp1tIgGDBBZsEsxB/xu1qP7XTRzQqi3G
	 tttql+7tQH6hzxw8uHNHZyDFHpjFV7yzrtgmeDloRFax8vRhvSg6lPOod8ePKviw2K
	 J7aEZbHRWeJ7MKu1TovFGbGMPnwT/abgTol9eoKSo9oCGvguE9vN1aRrxF5AxMWQoT
	 kkWg7Khde84NESxLOe9ITW4gEDcOBsc4kyNLozZs7QZTt2/KHIYgCb8RWS3nXNWDFN
	 uF4AVMj/ovBYgCa7xfTsiT1KKuLZMQrwlQNkaF10CmAVczCj++HQ7Kf8c8O/9sE9kc
	 IzuNO/8XMrmEw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 919DEF53D8B
	for <ddprobe@lists.linux.dev>; Mon, 16 Mar 2026 19:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177368849357.9769.10788957731946149289.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9abd17413162d06b8690c48c6b00f3fe1999bbc9c45b2acefa05067626d429e8
Date: Mon, 16 Mar 2026 19:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773688493
