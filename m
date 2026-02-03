Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0F0393A7852
	for <ddprobe@lists.linux.dev>; Tue,  3 Feb 2026 14:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770129234; cv=none; b=q1d/Qv2jy8+m8mtpR5fFpAHHHCQQ2baq0OYIrTdcmIn4URKdzJhvd9l2Q6y7QV5+cvb2bHBfoT64GaeVS9JEPfsSUAqNGndRHrN6460bzqPanmovjDKoii5zWGsrMBALDA05Bj50/Dthy9WxyHmUmH5d/lc7rMruOAf1iOLWIbw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770129234; c=relaxed/simple;
	bh=dCs3mEW6RaQwlRV/Qxl0jfh0YfiIL/GRsIip4tYKQ+o=;
	h=To:Subject:From:Message-Id:Date; b=aOkZ6yuAj49SlCo/dWkVCyVGtBjeZvbiB2ISntOzKDwLfO1vC/s2tlfHwz8x+P3bdXjDcAuDeZcG+WMUHf+3TCBelNLIvWZXGp4Upm7MP03sSUSUe7wbbGO05Ol28iWehFgJH6sHbHPZ2qy5B3/kUcxKglbwnQL/GjUJjjiuEus=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YyQsOX4n; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YyQsOX4n"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD1EBC16AAE
	for <ddprobe@lists.linux.dev>; Tue,  3 Feb 2026 14:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770129233;
	bh=dCs3mEW6RaQwlRV/Qxl0jfh0YfiIL/GRsIip4tYKQ+o=;
	h=To:Subject:From:Date:From;
	b=YyQsOX4nGrhYbcut/5tSTzrOw9WCochehC6gOcBMcfPJJXDSqM5fgUu9N8VhXfC6R
	 6ZYU5gLlkIy6r3hrgivL3IhJzh+1Tnpx4jYjK2FQDSAK4ej3X1HPUVKcuvF7BZZD3j
	 orvfw9X6TRm6A6y35DRSid+xvseEY7tVJjQ4QeDgu2tBSkxNBJq0gFkdzesUmt6aJG
	 WkGIw2Dv6g79Xr9bhV6ChHn++Co+I3VbacdYNBtcxB2pEL5Ve67s/bDusZm8NO0WE6
	 RKMGzmN8DFN7dKaWfMUb96ekRmqUIO9NJydQ8GzYUBNRqOJJikjz4wP/bKqmS2h/6l
	 FUB1WqwWVI7WQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9BA50E87834
	for <ddprobe@lists.linux.dev>; Tue,  3 Feb 2026 14:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177012923362.28612.13205264999743151298.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d456ceda87569fbade62fe30839b3574717c31d050e17d33fde49630d17f4b80
Date: Tue, 03 Feb 2026 14:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770129233
