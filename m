Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 30F3528DB54
	for <ddprobe@lists.linux.dev>; Wed, 27 Aug 2025 23:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756339194; cv=none; b=gigYkxb0ghbSmX3jOygSdYy+25I8ZWoU/nyCNwAPnTBaLkzBBFDPRPMv5wHEDEucXz/Tn0JQCG3t7nb/a5JyO8ICvtX8MkDSXoMdo0ykKCLkk5ykQDLT9cVsU+5ONjaqoB3O0onZhPR25Z1TRhltweyg0OLZGZqgg8GLhgHEf+g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756339194; c=relaxed/simple;
	bh=IGRq1DlHQntmgdM3QVx07BFYhYKrGzmQSfb4B4dB4NQ=;
	h=To:Subject:From:Message-Id:Date; b=IkkF1iyhQI9G5qto7fp/JC3t/ikBF35LiqYJ3vZgsTbeylYaeXf8BmJq3yM6zzUMnVhFaPMq+u/j1Fk/0CGDKJhuOWyASjkt0t1Nfj0/FRl5dC6NOGDJtd/Whqr7vBACHkSVug6FUfWObhiUa63NMfK5BPFEeoLOh9Q7ZJZVLGY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AZwXICe3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AZwXICe3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0D62C4CEEB
	for <ddprobe@lists.linux.dev>; Wed, 27 Aug 2025 23:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756339193;
	bh=IGRq1DlHQntmgdM3QVx07BFYhYKrGzmQSfb4B4dB4NQ=;
	h=To:Subject:From:Date:From;
	b=AZwXICe33fbqONKgsLp6iyy9qtPHOKznglwIUobMSdnqVsd8e3SEI6AqhuP8l1RMy
	 1V7AhB9mH3pNiLiHLVQF4tGBIzj65YHaylFqZTHnD0iNS8G5QRYcUnzu7529Xd8JiF
	 MQwLFP6HbqJQjQULrPxIMRNLuFG7sppnrDdc+7Job+xYt1XqoCMqInslGKg/LX3PNQ
	 lGnb6d7kBhPiRLAVEWCIkJEI6rGYi0eNwPzLMYWvGils+Gkop8pnmnHyC4bVV0F0me
	 SwwVZAogcBbNkdSHkcIsXzXhT9V3vfpfI34G63I5IHT3+qQznpe5CkV4x3yFMKnZHg
	 9rs2adAbN40kQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E0E8CA0FED
	for <ddprobe@lists.linux.dev>; Wed, 27 Aug 2025 23:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175633919357.3116.8514958669066453681.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 110db4aa6e3c1080b7005b22624d1e525d3ccd8bacced529784848db71ab2a5b
Date: Wed, 27 Aug 2025 23:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756339193
