Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E21A1C54A9
	for <ddprobe@lists.linux.dev>; Tue, 15 Jul 2025 21:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752616794; cv=none; b=OBneKtY6ddiNEipMWf7U+P5q/BFj+suYql6J5pDafIpuN1bH16YTB+MPjgLm36fbz8cwiRj6IFfoWEuahCHVI9LFzhqP4SRo8lapModpDjNpoSrwXHdx5NTj3n4MGLBrHM9ip8y5AKr+BD+8FYo/OvfytB25eF950Fe+BHSE890=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752616794; c=relaxed/simple;
	bh=yszvMwHu0dIlOjtgwL29frXKA5TfMLoRzwpCDFgEq8o=;
	h=To:Subject:From:Message-Id:Date; b=ZwJ0Fpm+GS6UwxIaQVmtG4GPsldfSYu/3HEgXFm6CX/jUMnqoe9tD979OZ4xvwe0gKkYf94RebFbsYRRhc7ztVUwRxJZl0g/Tra0enzIg/O13F3rOoGtwUWY6/Hh3dHmZFSGN9GQTAios8P/TwILZLtJefzwLGy/yuA7hgSuL4U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mBggbnQo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mBggbnQo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E00CC4CEE3
	for <ddprobe@lists.linux.dev>; Tue, 15 Jul 2025 21:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752616793;
	bh=yszvMwHu0dIlOjtgwL29frXKA5TfMLoRzwpCDFgEq8o=;
	h=To:Subject:From:Date:From;
	b=mBggbnQonEtS15o669xgOq+eTMnMoD3kubcCloyl5nLmi01uNb2O/S9B99D7yzpRK
	 8KL1kpYGXtX3SFa34zAd85H746/BFP1t1R6+Q8CZwTkBL2MWmtgH6Y3TT232/hSA+S
	 UvlkY8Svfeg3Qks9uA1hRMLtF9PB6HYIhOlHATgqSTkDAjGKwRU5OT2AZr7zIcDyvf
	 VHo7LR++Q+OHNTJ7m3+AmUX7neRKVCUxNh/wg1KpeZYAK/GCI77CNXAQUhMj6BEWLv
	 dMr39OgxVE5ggeZIF6/Q5KxmU75JytZVVvBxmW6/ITHK5iMBXX1qvwqg7XOZyR5L1w
	 BP9dqWGHTVKbw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FA05C83F17
	for <ddprobe@lists.linux.dev>; Tue, 15 Jul 2025 21:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175261679358.28446.13989891248371151106.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2ee24047872b28349666cef6fcc6ae9189e0018b35314646f81b32a73aeeb2ff
Date: Tue, 15 Jul 2025 21:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752616793
