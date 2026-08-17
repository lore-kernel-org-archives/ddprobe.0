Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 70E9114AD0D
	for <ddprobe@lists.linux.dev>; Mon, 17 Aug 2026 07:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786950034; cv=none; b=Wtjhoonv13KDON6jeeh9x1/XYFoyu1c9VtB/JP8w3tuaOorGGT+NolwS4IR/C0aJji8oK0EV2YO+kUcNR1XB5GuNNnyhTIK2n8oIzAq40ErQxO/n9mFmDw5e0gUjed/GyV3xW/mh2oedrlN8C/JQD2QRN3gGfUrkCU1YgZ8rNqY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786950034; c=relaxed/simple;
	bh=gen5+atL9ysap97xXjAK9Qu+4OysxirwIW1h8oYUBLI=;
	h=To:Subject:From:Message-Id:Date; b=t5sJjbbGDKBtELiKSuSRWzkrPzA2NRu9cHgRpzK3lFa+6tlj/eS+BEO4vtG/50MBDlTehjceBpqvx4fns/q1mCsTEd/5O7pBKc1cpvbkqTULtHXkV5lGh+CxGwOB7HbR4tnk7Xe3gm++APtxWvYl2VGobr9fGdnfyV5V9YpvGKo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=R6l3Eq8G; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="R6l3Eq8G"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 07F19C2BCF7
	for <ddprobe@lists.linux.dev>; Mon, 17 Aug 2026 07:00:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786950034;
	bh=gen5+atL9ysap97xXjAK9Qu+4OysxirwIW1h8oYUBLI=;
	h=To:Subject:From:Date:From;
	b=R6l3Eq8GfzP7Z8Z/WFUJ3yNzAKY4I/kSjPgunHzbs584xbrN+KtMsXM6edDvLxPiP
	 lAJZh0Q/2xMM6Y2lTaIh5ceJ5VWNd2OziwV/lUqE2IWh+6sU7WmK+fEU4DshkJqT5x
	 iuabnNXCJ5sWSDhinrM5jwvrNzrNq3VRiI5XtofZI5npBialr3Zhc0ZcytR6BP20Um
	 jwfrrT1l95xqXXRW4djAxWXtXXPx5s1OhvTewZjTR65/ZJvVSwcFLkjM2JsKl9j013
	 fUfO7hntVTRYyD5hnzqWBO3Z7fR18iolXr8EBXZhL23Mn/2ZjrV6Mb8TzRzs/lwYCo
	 uxy+kL1OxBE/g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B8359C5CFC1
	for <ddprobe@lists.linux.dev>; Mon, 17 Aug 2026 07:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178695003374.24545.12475015225911072462.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 64a660ec32182c052d88a98e328d9b3180ffdf24ae136f20c95c8b0960ad8d45
Date: Mon, 17 Aug 2026 07:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786950033
