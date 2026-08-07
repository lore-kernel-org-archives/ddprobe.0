Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A491226CFE
	for <ddprobe@lists.linux.dev>; Fri,  7 Aug 2026 03:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786072234; cv=none; b=UrFXlF8U0okk+GdgXTW3NFWYJdLiHfxpJLwwJNWYgXj/mSEZuPypDAEyTSbfLI1f1eJL6GCfFlTGMoyFWeKgN0qP6Py6pIyMOxUMmYGZNP/reqz5vVAgUDEX358tbk+2RWKZLYKPytxIA7iiGj+vQcVJaW/GpQ4lvtL86zv7fRk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786072234; c=relaxed/simple;
	bh=+lRuBjlwf+GASqkicPjruNWgKZR9n1CYS7SztE8TJ3E=;
	h=To:Subject:From:Message-Id:Date; b=XazGKFn5lQhy/tvuRnBYyLvrIeQQm6F9avbuqIeDYhLiDlU8reQ9dXmlP3KCwkKkCkkXZ3+QFUf2rTJ+n+XYxVFaDcD588vY1hv4g0Z4MSUfZl+lbBa2pdNe3lWzmVIdQy4OgnRg2hfNT8dEU7x9BCz+ujWE0DpV1XUyXCIGGl0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KOpBOsVE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KOpBOsVE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D412AC2BCB9
	for <ddprobe@lists.linux.dev>; Fri,  7 Aug 2026 03:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786072233;
	bh=+lRuBjlwf+GASqkicPjruNWgKZR9n1CYS7SztE8TJ3E=;
	h=To:Subject:From:Date:From;
	b=KOpBOsVECx24w2KqlQtGBGVQDwU5igKxET3f3JcvQkFanglb6YRnFsGqarGym4eXK
	 hcw5+YSbiVKSZuucXCFwYoc7kgqW9NrwqWQcDatYD19wzkITwFnvhugRJWJaaDi3DC
	 yD7zjh1r6/n0sVYEAYZyHa7i4neRtOECrl1kZBt+seu4e0cApWn/CYHvHS0mNsgBsj
	 IxFJGuNLMjI7G++uis5kwFRiLTqJ7M1m9TkUu89wKCRbvAGLolKMlzZmEiXNzOsK9t
	 E6PG7o4IQ7tnIuvInlA+uqe6gWKlgBIUnlCcckRMJrBqBoJanXpusn6bylOWyT00NV
	 VS8gQcfLaz1kg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B12A5C5AC7A
	for <ddprobe@lists.linux.dev>; Fri,  7 Aug 2026 03:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178607223368.19944.10210009557918430373.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0ee927550704c2c55044c302088dfc638759deef94bd9848dc19ffc8d7b86761
Date: Fri, 07 Aug 2026 03:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786072233
