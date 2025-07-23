Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20E0A111BF
	for <ddprobe@lists.linux.dev>; Wed, 23 Jul 2025 23:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753313994; cv=none; b=roN/0o1zJB5wSnfGje1W4xfzisbEi1gvuSKM61rAd8JAj0UXvBCValZAb7aDjRe8hTzgFZGqloFArBx584HAq84fr3MI7jzEylZzP0DRJ7n1DgWgEnSGW+Sz6GiHYPwNk6+ASl4wZIPo39TzqKdWrkPVG76Vlz2e27WSY/lg7yA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753313994; c=relaxed/simple;
	bh=9g3w4HjSEZPr1xluCSNarHbvjq8oX/eDopgCtZSdfDM=;
	h=To:Subject:From:Message-Id:Date; b=BUa3rJpbW+gJS3whATgsKXswx5b6ugkuvOqf0bNC3TGzmxeezFxks5jqVDLHkCe6c6OG9c+1SJCxalKAxzV3lRL0fLAhIlnsGfhGAVCWFGlFNBpvxIU8zY3JT1KIPlo63+A1MoOxJoIZyxkPq94atypV9ZbIZno6oxRuWfN2l5o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=H8P8jPbg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="H8P8jPbg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3A29C4CEE7
	for <ddprobe@lists.linux.dev>; Wed, 23 Jul 2025 23:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753313993;
	bh=9g3w4HjSEZPr1xluCSNarHbvjq8oX/eDopgCtZSdfDM=;
	h=To:Subject:From:Date:From;
	b=H8P8jPbgpYe/Mi2ncla9KvO8ybOXYo9E97qTAdOTIs7PhIrp7xSm1NBRTzxz+Qy1E
	 wBoAwItTZXtI5JIXOUFaKsiYwdiqg/XJJmSvgS5qbj4QUxN6BOQjPHSE9oKW614QMO
	 hwpHLRkEsEIgW5jk8s/aSkoGpxeoJ9bWdiwwj4wdqS5/twp/f2y9RZlOlG7lyCWrdi
	 IVR1qBkuLtVIeQd/i7pufJiO/LHuJ+3OobaGaNWRQ4VofnM6sZMffXQ6dSX5KtbbT/
	 NeqTCePfLxZJxKtuwZ2eROYJLiRZqrQ+1OuAt7InfoWQ6AdamT+lQCkBv/oCGMFy7+
	 f2mfoojBedJpQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91FFAC83F1A
	for <ddprobe@lists.linux.dev>; Wed, 23 Jul 2025 23:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175331399357.31905.12338967033879067163.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a218822d6418448f44489e536bd7781f93f1e91125fd9cd4229de0ff4c38b988
Date: Wed, 23 Jul 2025 23:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753313993
