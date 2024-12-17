Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 58BA61D86F6
	for <ddprobe@lists.linux.dev>; Tue, 17 Dec 2024 23:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734478554; cv=none; b=tOIHjpOGtTUx6zvrR4qvpJXuoD6Jcjfdrq63FMgR2V0ourtm/eV0l+6o8WTx7YpPos5/cn4T7XXSjJCT1+5uyno/JUuIhhr9jvqcB/uQn1wMMZKgE1Ng+hG+qOeT8iWjBIrvzY3E8TDVTQ0EVDIcIqs1Az79damlzwjLiVWu+jM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734478554; c=relaxed/simple;
	bh=Rqk7/K7uaUSd/bm3WpV44gOajdGO17VqFf2OsdgkD8M=;
	h=To:Subject:From:Message-Id:Date; b=PjdWh8sJxBxlOJ0bBNSgadYhE4RgqdI/1us88m+G2+JK4WMlL3/Hw+Zs+FTc+XQq305QklBmS8PS9+eaLRaipC4Pd/TeKnfyac4BY7mo1RPZyHr61OQF6lBe8bxFPqjnaR/ZiDFI3OR+h+VtrIyrIV+vcAG18pJRyuNt/bTlTn8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ougi/GTa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ougi/GTa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BEDC1C4CED6
	for <ddprobe@lists.linux.dev>; Tue, 17 Dec 2024 23:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734478553;
	bh=Rqk7/K7uaUSd/bm3WpV44gOajdGO17VqFf2OsdgkD8M=;
	h=To:Subject:From:Date:From;
	b=ougi/GTa/cFgaHoTSbQu05gDiSXZFhhi2Zxk/9VkIKqkWq1Jwu4iaZfe6gbw8dHSz
	 1tJlV2lJnTYAejkx7Q+VU+Wwy/hVecm9Gd4lI+xav6PBqYDEm7Y37V5HeQCC0qDKZq
	 AXtWcUh4scR4xdL4ko1cftNwvluUd0nXKHanHkp6oPZpWshDUnzunfTvM1TnRO7q2X
	 74Cq/iMJai8Hmj5AGvIgG6hKxvt+YEm1EiBVPUm7nzSroVoHMZwTeOejFg2MrNVRhD
	 vT0WhVNxoa22ZttBto8hLfSp7ujDt3Eu0D60rN5fHe8E6GCuwjiST4jU54fTFBG+sU
	 12pBI+3Jvdusg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFAE4E77184
	for <ddprobe@lists.linux.dev>; Tue, 17 Dec 2024 23:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173447855370.13008.3517666071187030820.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d93378d47d0805bb99b1d704d2b1f52b8585a616ad57739f40fd3721dd3f06ea
Date: Tue, 17 Dec 2024 23:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734478553
