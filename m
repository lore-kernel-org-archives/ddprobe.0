Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E3AB1C3C14
	for <ddprobe@lists.linux.dev>; Sat,  8 Mar 2025 13:48:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741441734; cv=none; b=se85nlam0YDrzBljD8shsN6ZYeeQjspUhqDMi8ux8jU/QjuoJeqheGabTuZSeNpgD2Z8xmNCdTNtpcVrkeSMn5VK8sZRS+HeD5C5MVJB0GVwM9H3Svcaad+qjJeGGOpBpFqKUvMKMIGLSVeTkefz81XYcVsgtQxW5J/Yrfgd0IM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741441734; c=relaxed/simple;
	bh=rG5C0Qc0h3dwxv7/ssNJInz8Q4u0kIQ1sNOnha6/YJQ=;
	h=To:Subject:From:Message-Id:Date; b=bqBpb3bSe6+Aema4CP7ca6+6B9RMJwg1jwSH5JmBm/RHTB7NvckWkf6fB6MjN+6DAR59YJg64nmnMa4/odg8arb5pq3WkvkIUdYy26j4fDaE9DLEKwabPvDsWgu58bw+fRUAdXUwYsFosmqKXnfaoVPjBDQgzsegAgqJFItIh94=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Z32quv8c; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Z32quv8c"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8262C4CEE0
	for <ddprobe@lists.linux.dev>; Sat,  8 Mar 2025 13:48:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741441733;
	bh=rG5C0Qc0h3dwxv7/ssNJInz8Q4u0kIQ1sNOnha6/YJQ=;
	h=To:Subject:From:Date:From;
	b=Z32quv8cmIcqnG3snj6oHdgKmfUtmLe+V3VfcWyk23uZ51rP88ajGQ7hxkoPp6u1v
	 bB6i6S0piZ7yd8oIicVhb+vcJfk4DpxSjutwINDCsFMHwxNd1xSEu9mdqZB08VTWw7
	 GoVH1lDsGCwePpVRQQrV2++7N91BBDxQypwc/Z7pm27KBFotgS4TaOWdpyIgFUNDee
	 /UcDsU1AA0FkfuYKtRyloNb5bEWr6/Ke/dQeKnIkogEUQZaxtL7G6DO69FN2H9qSxE
	 d50QNUaa+ggNvuLmOkRtHZ9ROyB3I2jrkNtm1IGrIjc+GIYoNefrq1IqnqU2IKnfu/
	 2n/c4UbdxxGcw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E7A3C282EC
	for <ddprobe@lists.linux.dev>; Sat,  8 Mar 2025 13:48:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174144173357.25549.11221448259746415215.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 01bb6d605163f74967eb21093f9be81f78b659b763be04ffe847bbf35f126e8c
Date: Sat, 08 Mar 2025 13:48:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741441733
