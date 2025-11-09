Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 450CE2F7AC6
	for <ddprobe@lists.linux.dev>; Sun,  9 Nov 2025 13:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762694994; cv=none; b=qJKWXiDh5a8oqedQP/Hovvf7F7L2hSd+HPZ7xYbgzVmup8NN7FUD4Wo6rdrdHnln+4aBfmqDeE9ItpFmzzBj8ZtDELR0LjtFoIbu4ANTMv+dPBy88dUGrSNv0gn4iPqX3r0FP/kELXgHqaWE9nVKwxae3R9FdHUio/k/f5+MDiw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762694994; c=relaxed/simple;
	bh=kVuWIIYJV34E/s50aZNlEPwMHrwXI2otC+UbOn+iFkU=;
	h=To:Subject:From:Message-Id:Date; b=A185/wK1vrGjSWxoe7xYOhu5WEkkOOOecYcelXtlx4kqwhekoEqaDmCNGV8HA+uTRVEgCp+JGzJVsefgf4CZ2ShaI6iNKDLbuajkkEB16Qavws2oWXiMIPIbHZ01xQbnrZ/o+DpDsOYq1LNHWELZiZxxjbBYzxpOCt8aRPIkLHU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MNkr9GfR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MNkr9GfR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5D73C4CEF7
	for <ddprobe@lists.linux.dev>; Sun,  9 Nov 2025 13:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762694993;
	bh=kVuWIIYJV34E/s50aZNlEPwMHrwXI2otC+UbOn+iFkU=;
	h=To:Subject:From:Date:From;
	b=MNkr9GfROUw7jN50tPiHlVBksOyLmmOj5JA95ubQ4BWHn44rI5r/TBHEjx04ffS9K
	 e4EteIYiwWcCQdboHLIJWTHjF3jEo3YwYukja4Syp3NM3/yYcYNN+PYBSWhSVh/UdP
	 f9Oq485wBTzYSwq7n4IxUi1sNKdV2D3AzUnXwc2mstQ/GiRdwQHO5Eb0hRbcKovaW+
	 /4k1PhtOHo/mNaR2EHSLqV4AEAswX0Ywb9nzh154KeVQ49kV1MTwJlLwMR+cKxjNQm
	 JQm+AmB5MOEZzp2sMqycG2yVrpLSA9XgGJnPf6ddIjh0kwKW3XljWzA5QF2puMibrH
	 R2bZfL0CGtIVg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 981E4CCFA13
	for <ddprobe@lists.linux.dev>; Sun,  9 Nov 2025 13:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176269499358.21004.14745489338072924721.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 62b574d31cb835dcbd34293629fde078fa1ac53cb2e641234ac6eaf38f13afd6
Date: Sun, 09 Nov 2025 13:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762694993
