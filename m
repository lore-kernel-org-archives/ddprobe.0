Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D8DCC13DDA4
	for <ddprobe@lists.linux.dev>; Thu, 15 Jan 2026 01:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768440833; cv=none; b=P02BMjFyNKSGW71GqiWOp0Zh1gYeahmUMQ4vbrrpWryiFL/WZpYfh8EpIaGK9yUx9hutwTCNxXVGT+OuJ4YgkMRK0XK4YJqLaJhqca1fMKTR1iQe2X+bOQm2bFDOIFLdbe4bEyh5WL2+bu2LPFVLHbGK1Ib+N3Z7kk+nvdX3d8E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768440833; c=relaxed/simple;
	bh=mzBBEhPGoR0PoAuVrs2DlU5oq1zAb4JvWWBGAN6B7Y4=;
	h=To:Subject:From:Message-Id:Date; b=D0w7vESrEvp5dD0FDQIOb2qHrohqc3IQlGZl1l4DgKUJ2hcWo2SDoGL0QzpBk64aHEZe0zMMF+RT7qjN5lpBLSTL90xRb01mr54JKE9F1aqLsjwiGq0V/axX05e6sLUHyQmHQIraYl/VMgh6jSTBm8PIRhnkwh0WmOod0IUGfQw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AjPffcLs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AjPffcLs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3F8CC4CEF7
	for <ddprobe@lists.linux.dev>; Thu, 15 Jan 2026 01:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768440833;
	bh=mzBBEhPGoR0PoAuVrs2DlU5oq1zAb4JvWWBGAN6B7Y4=;
	h=To:Subject:From:Date:From;
	b=AjPffcLsSMjricUH4kERjVRUYCYef24lupAohXAuLM5uqYf7ocJ3uFcifG74jFJe8
	 ld6cgHiGy63OJmZDF2O2gaDrLrwfmq4m0ZDbyBvqd64O7OgtGnr24sYN+OlzO0XDyC
	 J+M+3DylZV+HJSmiUaFvO1EaZPz+lX9VohwEq1HPs54AAnkRVmZxxv/R8rCHHwnFVW
	 YNowtSpQ0yTjL3C/ocYsCn0Ldqkq3G/x0HPKEDo0pq2BpGg89VNHndxAe7g4j59ePh
	 sO9Rutr7jlWaSLR3pGe9YVXCWtprGFrw7PrTo8n5NJv9W4RvgT65dTiQMQu4JwE+2B
	 m9HTC8hOGKs0A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93063D3CC95
	for <ddprobe@lists.linux.dev>; Thu, 15 Jan 2026 01:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176844083358.26318.3935225225316287063.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9ce41a6411c552d495e6218943928ab4da89d89968ec5fab63e64948cc9a603c
Date: Thu, 15 Jan 2026 01:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768440833
