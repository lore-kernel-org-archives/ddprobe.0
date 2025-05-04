Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2DD82376
	for <ddprobe@lists.linux.dev>; Sun,  4 May 2025 01:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746323395; cv=none; b=ReeUY/nxcTI2DCawrtjpJdlVhwsFQlItgGH+ofj6lz/AhCBF+Yr2Z3fSDIDJDcGhrcbnIi1bRMKnHgLlyDAIGtCJOSqRVL8YwyO2XsT7k6IwUA4r3xLSFoWr/HUGd9eTjjfclShYD+F6fumRN2hAo3ZFPAOXi673nw3sWesX74M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746323395; c=relaxed/simple;
	bh=a2tUxwcPLVVh6HVpcRRoJWt+HR3UJAjRDlJdxzDoT78=;
	h=To:Subject:From:Message-Id:Date; b=mKDcFhkiQcHT6LM57p+QhzUjIh+PsgKt0oQoUXOFIjM4euKFXXeVI1A64AYi44bU4v7bf1WkCVnBxk2BtGG01U0zUKqhV8PdHsd1eMwrJPzAR/JgQIg7ppwfRzE5/QXybIqZx2Hi5L3sgLBns4L6goPlLmOAJXk1kHyo5vGUirE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=n8/UGFDM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="n8/UGFDM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0D94C4CEE3
	for <ddprobe@lists.linux.dev>; Sun,  4 May 2025 01:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746323393;
	bh=a2tUxwcPLVVh6HVpcRRoJWt+HR3UJAjRDlJdxzDoT78=;
	h=To:Subject:From:Date:From;
	b=n8/UGFDMuef2QLz6lz5Dya+zjXPKOO9xGPOEonYojF94l6K14S2Vk/Rd3jZ9Dpq0S
	 8ByQHkeQEQllNhhmgw78LOYCFC6sEF+ch7qQc2rLwCXHkXG7fMtHyNINenhSy6iB00
	 Zpn+Fx77s/q8wz0t/f8bvZHhIszDTmKvulrrPdokyT2GDJUjprfHcRkWh6g6hhLXdk
	 1DbsFJ4j5qG9VZaeqSgYeF7RCUg2BzdfyNJdXz2K07A54hPwGGz7R+40a+JoVAydk5
	 1qf5bf78EAPGCBpkpwJ5wgPRX0x1Cwvm9p0Ghq6L6IAplb5eYqGIraGasxCzoBDkI2
	 /KzI58KSD7ejw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90442C369C2
	for <ddprobe@lists.linux.dev>; Sun,  4 May 2025 01:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174632339357.304.10458880070525161797.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 147798329b249d9d949156f314eb1f58c0ddc98a34647b178f46aecbd68a02ad
Date: Sun, 04 May 2025 01:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746323393
