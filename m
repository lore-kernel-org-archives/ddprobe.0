Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2807C4D599
	for <ddprobe@lists.linux.dev>; Wed, 24 Sep 2025 03:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758684594; cv=none; b=WLvLrzFwSM/gOviyRropfo+zXs4Glo+PitqHc8fI4n9JzQX/7lIKs79Gpu67fvkDU8On5Ztrt3bbut+i0JhMwFv6XQci7wx7E7InQcLAk8A2EpPQtRc7ccK5H4S8zEJcAES5Lp9aWw/f+h/wVOtUuMTqNOA+FgBp3lvYXVx+pkk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758684594; c=relaxed/simple;
	bh=+Nk0jWcj3zh6yFLrDaY5hEdhj1IzmrHk5CyYPAQ2LIk=;
	h=To:Subject:From:Message-Id:Date; b=kW2qFWPyU7WRBoGk3WfFU3MznPq5kJGn45OJ8i1Jj3AruQ3NSzqVOgGaIebHnk84JzFGSuimemzjuJN6bDI+ifSnUXYPFM8QV4zqrAYVw5ouRnNMLq7bNfYqMx6aYHb7/RflO141JQrW+jPaNSNtoAyUZFvDyU7BUkXFc+IUCEU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DoENUZF8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DoENUZF8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A49F2C4CEE7
	for <ddprobe@lists.linux.dev>; Wed, 24 Sep 2025 03:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758684593;
	bh=+Nk0jWcj3zh6yFLrDaY5hEdhj1IzmrHk5CyYPAQ2LIk=;
	h=To:Subject:From:Date:From;
	b=DoENUZF8ne5/Te0KSkMQUVeVXVygfhvU9jiVrqbrpQMlBwmeTJ7HUDjXu+TEMik9/
	 ab2LyIjgbdFRUXKhnoA6p0QEShdDSoJCo+/PFdSkubo/lIyYU+cGTKaVamaPvZmtlL
	 8KfBEofJs2KvIWAuum+KjAPVl9pvqhenKWcZ+M62+oeH+kK66+/k+Fwofxr6OjLytH
	 fM1kwlpArXuJR7cHBC+E59gN8vlqjEsybDwjSnYzBtCrVQ7CJLhwC8YlDx/BoBPOxQ
	 CoZXykEZwKXFLtc03g/cl2Pm0ZJfV3F6Uuu08Hvb/qQlDTYaP0rHJhluMF/nkSMyUJ
	 bL4ksxVg5DX2A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90940CAC59A
	for <ddprobe@lists.linux.dev>; Wed, 24 Sep 2025 03:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175868459358.19053.1260947484171797244.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cf37a64688342aa56b824958a58b8c07f38486d678104b365e4fe2cbbc94d0ee
Date: Wed, 24 Sep 2025 03:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758684593
