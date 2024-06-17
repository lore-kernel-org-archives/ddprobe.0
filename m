Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7B8DA53368
	for <ddprobe@lists.linux.dev>; Mon, 17 Jun 2024 07:48:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718610503; cv=none; b=DEb3fTWEa3/+UPzXC7r7EIc/Az9rcIXKwtLweeOoh+uUc1Ni8GQUIXWj73HvqHLcIfSjNEzkP4fn+YUGgNWd/cfga4fMWS8DRzRzDT2GSePVqGRbFmm/W0KnXyCYkiUCjtkdnS4sQRZQY/XZj4Zc4B2WPO2UqntDRjfiPTYAT1U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718610503; c=relaxed/simple;
	bh=K+JA3cZSsoMCVXQomx3Wq7BhFVHAUiJ3AfHLmDmL8GM=;
	h=To:Subject:From:Message-Id:Date; b=t/0KUKXx9dy+IYYy40HLm+1M2R2owZX9WgpG79lp33THZqAb0PGxAJ0+e1a3QEuGJCUU2+3QfOyrPUMc+nuUa2d9KPoRywmNy0F9uYNpicjft0SFZoHyvnnOEkNvU/uEULTvAM7MHRr1eZhh6cD0hLhdOHAD2wA6PdPpg8DlGzM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ekc1kvpZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ekc1kvpZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1606C2BD10
	for <ddprobe@lists.linux.dev>; Mon, 17 Jun 2024 07:48:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718610502;
	bh=K+JA3cZSsoMCVXQomx3Wq7BhFVHAUiJ3AfHLmDmL8GM=;
	h=To:Subject:From:Date:From;
	b=Ekc1kvpZIIPtVQa6Erd9NMAmt70acN7TvtwCX+nQMfpP+F/nok//xzENJ4i1yFwtG
	 VmrgRVYXvJB2rkSMS2/qRU0JF9IP81p3TkWch0uJf0uOc44/hACXSGlIXkNJljviWW
	 kK1xXi2QXBAoISbAxmLqCAmM13l0XWZhYnbraU5AHDp9RE2oNIwsKKWtDRdvO0ZvXT
	 j/ugN0i0ZSzEJlQoNzx/svgUiajGHxIbt7HtZJxRuIZf2sItvQfwogc1hEWidcWVHf
	 CA/lZ4nEbTR5lVMomqkJU/7LbBr6jaI0qfnBFdQ767iGcrk+BhNFu9N77RWR+/8jN+
	 fjw5Gbw33KJvg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BBF03C27C6E
	for <ddprobe@lists.linux.dev>; Mon, 17 Jun 2024 07:48:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171861050275.7099.14669878607432423936.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d47c587e5059df3b4eda367ae7e40f27d0f70dcd28482115bdec34ca694b1b45
Date: Mon, 17 Jun 2024 07:48:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718610502
