Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D5F764A1B
	for <ddprobe@lists.linux.dev>; Sun, 30 Jun 2024 04:24:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719721463; cv=none; b=ZOYtsaCU8gRweLPoMHjjbCGNM2RFD8oRG25oue8Qp2om/phN2UROLv2lk4SAXLZj8kes+mIa3gjLVBKULV4InfTiTKqoGpOqTN52qO7H8sJ8NthhtDv/BzVOa6zQZSPHdUs8TllGgfMg+6fes04eJxFyhzK+pkKqYxTN9H9/Ivk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719721463; c=relaxed/simple;
	bh=vesWP7SbUeX3kZ88Ggzfh0F+qPbKnnRCiEmlxw7HEyU=;
	h=To:Subject:From:Message-Id:Date; b=oCCDJPdCUPunK9JBmLH6nluPC/a4DnZBJIoeIp+gACeQ7q2h4DCcHwjgEgeuVlw62oQb4dSFByAfWkWrULVTQv4KqFJNHfkrfXddC5dJe76IeavXJPy07BUJRiXVUMlplM8vVTNwUzz3yFYFO4Zgm0y8+eOniF9J7t+WleAoHFk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NN+n/OL6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NN+n/OL6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 65BC2C32781
	for <ddprobe@lists.linux.dev>; Sun, 30 Jun 2024 04:24:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719721463;
	bh=vesWP7SbUeX3kZ88Ggzfh0F+qPbKnnRCiEmlxw7HEyU=;
	h=To:Subject:From:Date:From;
	b=NN+n/OL6Hdb/SQSBlqSEn3/QOb4D/Z40xI/xLlBjcp8ijxjdso555hTSTz7BEizJp
	 UPC4yGEde2NCScNA8yoK5fBuu1lnM1KLJ9ub0vxzDu/6HggZMmjzaVfOY6MBqP8j6n
	 LaeQIdR7f3IItpU1L9U3gETwxPLUbhai6aT0+XVFLY6gDLMky/2Jz5DboqzEALireg
	 j+b/cDu1q/dLcPiVQcLAjJse0Jl+Huskq3cX7ZS7S0LvvSGT59uunn/J7mvEQk/LoM
	 b6ZVH2zVchUjpW8Zi97bIQirYfA2tK2WAuOtV11+jGtfjoAB+2daqi8xySWdG8PC2C
	 lNzspsSUj+fxg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 0E04BC27C4F
	for <ddprobe@lists.linux.dev>; Sun, 30 Jun 2024 04:24:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171972146296.23237.7639997656154232584.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f0bd93232dc9ecf4699c5002c30a6f272c2e053ac01a75f15b52ab01d16b27b0
Date: Sun, 30 Jun 2024 04:24:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719721462
