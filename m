Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 199E02EA15C
	for <ddprobe@lists.linux.dev>; Sat, 29 Nov 2025 14:32:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764426774; cv=none; b=eFV3i8qmCiV4KsNC5CR2mgYiyX4+0NdK2mkYZGKt4KYLyKYlYsaqGMyCaddZajFJTRwfhhHnMVwNuIX7v2uNhWB06KJc+JQZydLpr2FlhtTyFRFfSL49gZVvfGqGBpbA26qPIdV4xoj7AQDIR/U2zYpkpnhPzDUj28dcqEZ07C4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764426774; c=relaxed/simple;
	bh=ZlCHG8yR9nZY33yppMU7TvFrG9ogEd+Gc/rdEWbS1rk=;
	h=To:Subject:From:Message-Id:Date; b=RcaWv4/SKyhM+EHXwxPXh8h/o6LHoYrMMvRVGkrfCn84xBk1KlzEQjh396krfPUp/h2bhjaH6XNsdRM0U0TqvyitmKga2k6aKJkSYhFKQ+TMo76JPLKvmwQgp9Cs9FH26DnvJ/Gh4ua+SWI4wnrrRCmletOS3yfXkIQBz6ff7iU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XE4sQGA9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XE4sQGA9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F77CC4CEF7
	for <ddprobe@lists.linux.dev>; Sat, 29 Nov 2025 14:32:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764426773;
	bh=ZlCHG8yR9nZY33yppMU7TvFrG9ogEd+Gc/rdEWbS1rk=;
	h=To:Subject:From:Date:From;
	b=XE4sQGA9CoTtaf6aVnuL1E44antx+7yW9hh4aIzfZGrQ0B0nCY4PIuJMn0dtXM1Dj
	 s1BGABTW8/BCybkU05wm/suwVgIBXrkaygtAQKIL2DN+4XiX+j6Qv6lETGd1RYE56b
	 rOsln9s6O1xSt+9QcTB5QY4pPe3ZdA+QVVf8kvJ87l1XhGnJQ3/zjZqkketLHXhwqa
	 SzANGWKyWGYsRhDdWgpOCR8ilcQn+PaKa+HeTWEKVJeeeMOzdL3MWik1G3noGO3Z2M
	 M8mriq40DoCiivALgboxoeTInrsdvRPbS2Xbc4KPvL+nmV56lvn2jTkuneH5Pm7Yno
	 5D1EbZk35SGQQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9039ECFD2F6
	for <ddprobe@lists.linux.dev>; Sat, 29 Nov 2025 14:32:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176442677358.13951.14911884762799426595.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 038d2cb5443bf11353e946b2edad8931fad0b538e44ba3ee47ad6f811dd2a865
Date: Sat, 29 Nov 2025 14:32:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764426773
