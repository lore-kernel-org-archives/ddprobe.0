Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 280E37083C
	for <ddprobe@lists.linux.dev>; Mon, 27 Apr 2026 16:37:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777307854; cv=none; b=H7A6EbYNSTocmgzO7UZZRCJZlw58oURTvST6vN1hpAiIhBThNsn1CZE2bSUJkevDmsFVkbXuU7YlSoyOpupOcS8WM3mZfcLAuW7KG9m8Wc9QaM9Cd42xa8+EdchfKAWXgD6+Vdh6NGVuAOcIOvP3MWV6D08y6eSu8qlG8kJQMAg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777307854; c=relaxed/simple;
	bh=1oQFEE8nzTyeAY602v/3e3PjHnkZBXUhrKPhw3bLve0=;
	h=To:Subject:From:Message-Id:Date; b=OIJ0tOeLVMUsIzn/GPIT52q9KmzQ2M6nDL75GNe2ypEdFmKQCaibyBzupOt6LB8xqZjQSq3w1XrtxhQGfML7uT703mVBH9vugAvijxnPCffws0ZNgU5WbKk5BATMaCsotM+/pwSf7FRHJyljle7jHzHJZ6J8wYdAE3d9Ofd77mo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CctqeKli; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CctqeKli"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BEB25C2BCB4
	for <ddprobe@lists.linux.dev>; Mon, 27 Apr 2026 16:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777307853;
	bh=1oQFEE8nzTyeAY602v/3e3PjHnkZBXUhrKPhw3bLve0=;
	h=To:Subject:From:Date:From;
	b=CctqeKlie4mUzXPfOiVlaKcHtbIAmDBthx5C0U2dnrNDd8jJpuIYH0dWH81goyKoO
	 wViBCtJHOobrI8jqq76vwxA4IYp0v7bkeTE7+hwbSQPm3Unxfcu/tBPCTnD1179WpV
	 6fJuK6y5/y6JNyOeghvhNU53e8ZzuhHTaMYv0f95sWEmQv77R4X6+AJvEVRTNb4uia
	 hp2MgsJKNsPG7o1T0PiL/qOtxGIxyZhFhM8sP7LCffXeRPQcGsxOIRP5iXLqT86ZgK
	 wHsF0j4NIbDyB0QMXOFR+vOOxtCKOl0jb8oGN7HfWQKS/FDKYwOmg2x7MvKghG5z4Z
	 v6JzhghsIYLhg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE6F5FF8868
	for <ddprobe@lists.linux.dev>; Mon, 27 Apr 2026 16:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177730785369.12599.8510527810488347764.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bb95d7c67e894bd2f6d39481df6709fc480975d063cdcc5eb489b46aa8d30940
Date: Mon, 27 Apr 2026 16:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777307853
