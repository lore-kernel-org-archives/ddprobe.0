Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CC95813633F
	for <ddprobe@lists.linux.dev>; Tue,  5 Aug 2025 00:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754354393; cv=none; b=dGwg/NwgmWL0Ifp6/klqMMcF45qF8Tlq/eiBQ5q+YJ3ItSGffSmt7xSFiHhN1tHIHsh0Jh0GQ809T9ug8J+20t/B9X9hHU3CdmeVJiTdzmiEh9xyOTMJQsp0uXrTioE25p0w4cJ52Yb5wlG7Atv3PbT/KsdP4hz2nOZJ6TytmwY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754354393; c=relaxed/simple;
	bh=futv92g2OWvNa2fjPm1Ghd5NwKgCKOsrNeCL6u5jSlI=;
	h=To:Subject:From:Message-Id:Date; b=sKynK68mmDKEpR/BjSvdfhqeQrcOOVcBfPLKIkzpCgVmrsCGMC0cYstA4g8M2JVsa/o1VrmWQ1PRgMPsxie7Ltlh2+mTqd4apdgFdUMIlP36qCMWYyRv6TFQ58q/Bfc+HeKsQV0eUp1eWgzyKCUHKBGZYXMKpMYCdRdCccvzTxQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Xr/V792T; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Xr/V792T"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3C81C4CEE7
	for <ddprobe@lists.linux.dev>; Tue,  5 Aug 2025 00:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754354393;
	bh=futv92g2OWvNa2fjPm1Ghd5NwKgCKOsrNeCL6u5jSlI=;
	h=To:Subject:From:Date:From;
	b=Xr/V792Tia2P9XXvHsTFHANoUo9mJ7w0aHMhYZfJfCg2IlT8Ekx68kjFhDvJkk2je
	 HlF3R150e2r13KaiC01aSiFnba5F2kIbLUbEEHLHrC28YxJb9XQpIDrwPT1Kk1CRFZ
	 lm7PsedmORO3BMrkp+pO9LrpUDlD94GaMEKInSayK4j2PGHT129rxdka/hoQv9RJ5b
	 nWIB5Efov+RbH5g7+eLuReS2qLwHiZOZ90LTUic1v2zZ4gPg92M2HpyKimc+fbZxBl
	 jpChReguCE9Lt/lt/DcxD+rAGkPkqaphxQXPj2xj3pXqS+iMxH9wuVe+/Oi0KPhT1C
	 CJpHUe6UCIvOw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92EF9C87FCF
	for <ddprobe@lists.linux.dev>; Tue,  5 Aug 2025 00:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175435439358.3167.12471628538826141257.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fcb324cc6360a8e48a38508e447a6f9814edd1669a12e13f788f9489504ccd81
Date: Tue, 05 Aug 2025 00:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754354393
