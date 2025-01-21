Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3CC0B3D68
	for <ddprobe@lists.linux.dev>; Tue, 21 Jan 2025 04:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737434754; cv=none; b=Xf4eU719uWN2AuKWQkzHiuyzPFCYXSgTv4DHefpfpqWs9a6qj84hQm0LYD+P0abrghEi+5ZN2RePyPT9keTGTHROd7tfslO0SdiPujuhN3wdTSyu5Sv1trwCNVjpGPb0eA50TB9dotTkInUzp89teMqkOQnECMURr7AxyfG6Mzw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737434754; c=relaxed/simple;
	bh=LM/H+o4U5AF2OoMxZlbrcGJl5eUGk2KqCbzIVaX95gM=;
	h=To:Subject:From:Message-Id:Date; b=qdQCRnkzQuuWPBp217U0pLUAAcGhvROD0PctThH1dEBt+10AxRi856W2qGWUF7MNk3Rn5sS3YvdIK7NA+3Frc7/7eLtb4X89PxhstHonUreVjRxGouyx/2e/yhh6DJ2o2gndQW5+uKbKdWspd5KzI2lChUoitL/14fEWEUzZlY0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bTIC6Ai8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bTIC6Ai8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A69E8C4CEE3
	for <ddprobe@lists.linux.dev>; Tue, 21 Jan 2025 04:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737434753;
	bh=LM/H+o4U5AF2OoMxZlbrcGJl5eUGk2KqCbzIVaX95gM=;
	h=To:Subject:From:Date:From;
	b=bTIC6Ai8djAGvPu+QCP//3/x9m1Aqxp7x2o8+rpuaebExrmbsLEeOEmetAlcw/pnW
	 ob8AoeawzJrZtSSTodNgh0+tnvpvM/8YTJUAlY2kK/IeQWACLDpkUZ7yl+F9wq1M5A
	 zTrwM9VWM0ktFu30cafUzBaf+c+camfORXlFRe5etE+4KPu3AZOt1G9dU2wrFY5wC9
	 G9m5YNM+7PnZ5pD3B35ZUMD65+Z/n+ujqpjbxzU+JhI4BU42Ef/ersKXsQo+ioZTHO
	 DwokXQ6waz4mAPV0/tYbkhL3H+8qRdMxZfXlOFnqzRlf2Mt7wQyFh0u/EbIPt4UrDp
	 LkZZQ4KMdCnQQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9289EC02182
	for <ddprobe@lists.linux.dev>; Tue, 21 Jan 2025 04:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173743475359.1396.7120680693737936553.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 277997c50e30251aabfed089a6e29ba4b649a817c7874df0c9107161cef540de
Date: Tue, 21 Jan 2025 04:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737434753
