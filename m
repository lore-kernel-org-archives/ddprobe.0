Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 06FE033BBBF
	for <ddprobe@lists.linux.dev>; Tue, 24 Feb 2026 21:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771967694; cv=none; b=SPuglaRd8YDUs+f/yma6OJ/Y8EjXTLagwWrxk4aV9tCBnSxX+XwBP6b9AbEcta4xP6AxvmXaCWG2kQrqZHdBsk0DOKXjMCQxLhpwFOmlOF187Yd0SE3qD8yeyU6V2gNrE9a96G0KjqXplA4j6d3hutFOTyudOu9qudxo5oAeSjM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771967694; c=relaxed/simple;
	bh=WgRWerjuOa0TANgJqEq2KXf1txCnP7N/cxuo+Xkx+8k=;
	h=To:Subject:From:Message-Id:Date; b=Q3ukdMoKAmiqLStVm6QyhroqFSV7Z9Q2uqYZj/8rZf3un+SXsn1aDTkz4gw/hEz+WTjtJBnx94GB7CKYgdlq++NNRXPVWouQPfDqP2BRxUHbQy+Z4X6TliHcOq20M20GIVF7OIgWKYYEkwWZuAe8xaZCl0WRR76aZNyN+BOK6pQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ovPQs8c6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ovPQs8c6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5A80C19423
	for <ddprobe@lists.linux.dev>; Tue, 24 Feb 2026 21:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771967693;
	bh=WgRWerjuOa0TANgJqEq2KXf1txCnP7N/cxuo+Xkx+8k=;
	h=To:Subject:From:Date:From;
	b=ovPQs8c6JS0rBO4TWoDE1vumVlzNJXqqTelOGWfZcwxLiwosQlfpyZDD5KQTEoFKL
	 iciJh/AwdLIF0kdbJHjYZbSjoTx7BLfrnmO1g3yw1f6H908brnrJZnV2E6mv7YI6e4
	 X2rau2Z/hiqq3Bav+5s1fMK68wavxstbzstrc8fVmx7kjKMcaRE/Gdy/HeD3e1X3q6
	 fKQ2f+wDelsZEeveLmn/meE2E3JoabCOUata35MdSMIceCpCzXLdlZ8EWMQFTBjOmP
	 8DYwPimBSnQD5+ngIwMQ8VYG/6BVvecG9Zj0kNc7h4R5MqGHLIWz9WycJBl8j0FQrZ
	 HNMK5ox1qLsug==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 917E1F4BB89
	for <ddprobe@lists.linux.dev>; Tue, 24 Feb 2026 21:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177196769358.28197.18276160524071222065.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1965a10b618a8b9689671efb169218076581d2703a7d6d42ddb52d6c8c154f51
Date: Tue, 24 Feb 2026 21:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771967693
