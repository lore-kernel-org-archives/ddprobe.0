Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 109ED30E854
	for <ddprobe@lists.linux.dev>; Mon, 16 Feb 2026 17:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771264494; cv=none; b=sKcrUlox/7W3qxF6h9qA1uCLfrVaVUy9Q1fg623P0kiaAAmyINkc4czyVWb3C/1S8P7xs3uRdjoMr3pZbUeZyVmxpFdC7P/BEajSxZ+RR2LEx2pvhryVd7EF8wMHq2oH5vcmvaLI+JDI9Jj5vl1/ir2oOSXHMC3Cqot0Xf3eBxE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771264494; c=relaxed/simple;
	bh=uOiNoOmxWl2Lk75AE14/8FBRch8RRqMO0oouXeXuETI=;
	h=To:Subject:From:Message-Id:Date; b=IjqIn4PSlMSN5LaxMs7UywyHvYJl8HlYN7iz1NMgRrfql3n97KAgy/cjrhwFcUhFQmSx4K1FBJamkdE1LPIOrhUqXGZJM1ZM0BFNZEmoibpq3GuoRKmqOkSkYxHnrDdyXoYWOwPV5/Rw0md7SVo1hCvbL2j3ptkXD0msqIr/THM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XBH/WHaI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XBH/WHaI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A27E1C116C6
	for <ddprobe@lists.linux.dev>; Mon, 16 Feb 2026 17:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771264493;
	bh=uOiNoOmxWl2Lk75AE14/8FBRch8RRqMO0oouXeXuETI=;
	h=To:Subject:From:Date:From;
	b=XBH/WHaIF25M8Bm3DkiQp9feDjQrR6gpbJ89OSwPDs5r5RQVrYqQ9XL4MNXZsysGl
	 Fhicp8pzvcchbf2pTqkF36fi6GAJV9YJWShVuFIAcScbcksoggw4z8T9+iwBZSXKA+
	 SEeZNiO0ZDUyn3CY6B8kl1Rr3AjAWzlorF4aq7+fvSY3yPDb5R2E9mk+55f2oCa+Xv
	 uT1JVOnxUhlR6kMWeCIQMudViLbjB1vXGVO/jv0kRx1dAhkJCMzWC7MBpeWRXGcIwr
	 Qk8sezH5Ar6aLS9H9Gq7e/87n3SmFt39s7it9YToIHIIp92mtPMC7dTs22lN9YIgFn
	 amKs8nwq5b7OA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91C73E81A5D
	for <ddprobe@lists.linux.dev>; Mon, 16 Feb 2026 17:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177126449358.7970.872635021241354869.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0a974ee3f639633cc26157eacc24742626f12290324bb815bace4bc32709a3eb
Date: Mon, 16 Feb 2026 17:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771264493
