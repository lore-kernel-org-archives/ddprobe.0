Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DB0B2253B73
	for <ddprobe@lists.linux.dev>; Tue, 11 Feb 2025 15:49:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739288995; cv=none; b=YUuRyoUyFVs1HDktxxIFQipf/7R9Wd9W8S5DcH6QbUJHPsyxFxGDoFDmD7XbH9VVsguPMBrAN0/fTOLvsqY80QtVZSPacaDEIakvuW+omuh6rs45WShPboXpdS/MfISdvVylxY1cyrueeEoCZW0sdONM0SaKurZkdAq8++mIeSk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739288995; c=relaxed/simple;
	bh=AjMCT0U57E0y3olywHO/HeFN35jJr4HzXfnCJ3MhsRQ=;
	h=To:Subject:From:Message-Id:Date; b=eL8byVlyE3gUBmXuY1iz+mL0byShcRudPh3PVropIUGadj3+JpH4KTu9Ad2PkBD4JxqdPTZL+p6vYTrdxwPg8HZaUVCvTqsuPkPk9jNpIqIbZ7V7jvN4976PmwAtoYQqLsshEtfa5mgUy9gFhJR2mmUJqzjCkl+2y+Kg+OVKEpQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=V8OxZYJs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="V8OxZYJs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 560D4C4CEE9
	for <ddprobe@lists.linux.dev>; Tue, 11 Feb 2025 15:49:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739288995;
	bh=AjMCT0U57E0y3olywHO/HeFN35jJr4HzXfnCJ3MhsRQ=;
	h=To:Subject:From:Date:From;
	b=V8OxZYJshQ8lChYTCyDchj/B0w+sZCeNdmrl6eYSelnlIefQWjwrQl4KJaV7f26KG
	 8FsFmiz2BEfOdpopx3TkGtWLUZWJtOu2p9B/orAsyht/6BIQjMd/JsaJTwawKsOUtN
	 z+RzSQ3B/B++9ux7Kg3AYgJ2EDGVjwj5hZ+KPowqbL3INkJK8ze6AoMJsWGe1xUJKQ
	 L29ILv+fzjHNggs8r3LcCDq8c/sBHz9XTd9JQPH/uMn5fIMszio+JZpM2vL8/LWe7j
	 32MgJHwhWmEqlufAjDwKAl6ZVvoTMEuzLv+Ma8aNUduwZ45/VuDNfdP1vepPyZehPU
	 RGUkvAW2opmDQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99F89C021A1
	for <ddprobe@lists.linux.dev>; Tue, 11 Feb 2025 15:49:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173928899454.14137.4512786618535667404.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 66df810c22c35818f04d32c2928c47387965a2fb986793ae313e7fa37d574653
Date: Tue, 11 Feb 2025 15:49:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1739288994
