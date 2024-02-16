Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1ECFF10798
	for <ddprobe@lists.linux.dev>; Fri, 16 Feb 2024 05:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708062497; cv=none; b=eBZjhI/7bPxwdoveH92tqJ1dY3b3ct6+tEWFY/yajRNyX6Y1Nd8natuPcWDJlwrXhhc0/zL0/sP7OCAc3ow/EmfWQA5z8S//f5BoBamIFR6WfXdoBZ7upNvVIO9v+OIWecD+ns8LUetJ2qKLaWxo9pablt8nPPepgSzkLYnnhWg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708062497; c=relaxed/simple;
	bh=qTx8jTlWFo2HBrd0hxA4ksrYPeNgnd0Zuj3Bi4yJ9yI=;
	h=To:Subject:From:Message-Id:Date; b=pHn+O/G2Qu/7ohPG/8Xb6gotQXrAjL3DlwVk7x6t1b88MC561uFbvgJqY5jP3JGZ1nyKwq2aDPLr0c5mC1yMSCwab0XNuMdQt8dOZzvMulsAjzEDhsCB4gBSf4Suej2EGInxQ9r59H0P+9M+lD00sF3GsjyFZhF34TiCRdlXI80=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nJ+81mnl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nJ+81mnl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7C8EFC433C7
	for <ddprobe@lists.linux.dev>; Fri, 16 Feb 2024 05:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1708062496;
	bh=qTx8jTlWFo2HBrd0hxA4ksrYPeNgnd0Zuj3Bi4yJ9yI=;
	h=To:Subject:From:Date:From;
	b=nJ+81mnlEiNdMH5JbTxg4rB+6mNW0sHyoSlqla5Rpe4/MZJVXNjTkHNkfsxjaqHau
	 JPxvd7UhEoVooiYgTJhmHhq9bir7axCgLWgSGJ6wXSPcnUe7Zp7OaZgybESaWvkiP9
	 rdkWBCzj9nTsnLCjrll/7RBmjerOh1Xu8QLidPRksdpovvsBU6SwDGNySHMMN2q9vx
	 ynnqwE3ximLV1ZBUh0A9td9LEJ6guW4o64q1H/J7aWMIRm3573b4KfTMA61NTEuCsM
	 zWqpHbUJH0ZyCnk4n/YzSOC9AYmVSwokoG2GbG9njBvTazn0Za2oqYQcaMkcbm7Xkw
	 CwsymADB+KTjw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6173FC48260
	for <ddprobe@lists.linux.dev>; Fri, 16 Feb 2024 05:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170806249636.25966.16771493558296568376.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 46413878683326f3d39ae0df2faf529c84455d68a92f43984ab29ca046851d2a
Date: Fri, 16 Feb 2024 05:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1708062496
