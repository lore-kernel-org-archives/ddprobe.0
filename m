Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 70B13B67E
	for <ddprobe@lists.linux.dev>; Wed,  8 Apr 2026 04:15:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775621734; cv=none; b=dVFeiTrCqc/U6XEYD1TghBxJV+F8MJ25Y193JfyOnrF3LUBWxBW9kBnNX9eDZ8r1Tj9zbQs9nscm+5G+PT6sXhkYwgebg2fg0BkQsZbQoDnwm6kzRfh2R9KQoHwk/1fT4pWqjMJAt9/Y8PT1IJd81xAeXHMNLzNCGKavG+th4dY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775621734; c=relaxed/simple;
	bh=1T6gQdt7ZYfqqfz35/4QXIxbEK4m+P8RTlccIMEL41U=;
	h=To:Subject:From:Message-Id:Date; b=nv5l+wKUfUfZ5Uar+IX8Pj3vWNS3BjJId+pXi12g+p5JyQTPukRkmiDyFNBH/5/ZOU4Y7DwTmqvRX6eqz2zTVyhR2v2A64d0fV82flhCYYyk8Hn0aajVSuV6aWwxqOmz0vCBeDf5ZmXeO5uaS7nRoitR4JMg5N1JuuZAiUf9X6A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rAlcP3nG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rAlcP3nG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 19FDBC19424
	for <ddprobe@lists.linux.dev>; Wed,  8 Apr 2026 04:15:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775621734;
	bh=1T6gQdt7ZYfqqfz35/4QXIxbEK4m+P8RTlccIMEL41U=;
	h=To:Subject:From:Date:From;
	b=rAlcP3nG99QBC4jh3+RyIVt5nsngXUqX8Ek4efLZI/RGRdbAm2Lczh4Hf/7vxgyVm
	 wEpO+zAtORZhq1Iob/quy1ZSwQlLXcp1YnWYqJ30PAASaZkrtbTsrq8YdHB54fNL20
	 8kWydq51kLJsoObGTHB0EWf31DVxf/yEinco0IEaegkmgwkWyWjomcWwqjgaLMmMuE
	 EwE6rZ5bNd+zk5feo96Veb8dxTmW9oVGDmBlc/2w5j0el24Q0nabJ8/kr+U6O7Mw9q
	 w1NlMFLPv2Ee31tLBRhdIXPb29COEISIfFf3s4aqGQrxWPC/9/vLG1o3WRDEu27/bE
	 CggnOJD0Q1avA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E6EAFFD5F6C
	for <ddprobe@lists.linux.dev>; Wed,  8 Apr 2026 04:15:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177562173385.15385.13879570962016295779.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aad51bc39520fec03f64d6c34c43d7244760ebcc5f29590ce0bdb84b049c63ab
Date: Wed, 08 Apr 2026 04:15:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775621733
