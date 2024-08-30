Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F36E1531C5
	for <ddprobe@lists.linux.dev>; Fri, 30 Aug 2024 18:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725042354; cv=none; b=t84jtEb92moFWiBWTvEeL/4VIHnHy1UOXGJNzAPSMPm/5S9c7VxqpuYphP+jcq55sNU/PAMw2dRybI5vzKrClUPGIQI+HouJXYHlIIFe25zmTCQ2Xv7EzHaMBv8tT1iDSJF8XnjMH2U9q3ZwmLQOh3JbA7jSaQ/woue06lTTyc8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725042354; c=relaxed/simple;
	bh=W/1+lU8s149y0KyjV9QQvvRMEV1dtwYeds/YqAPCj4w=;
	h=To:Subject:From:Message-Id:Date; b=VPAg7bNmTFkX/MdZO0TRQ1FIHnorV02HWPABLtHyvBzH7QA59Aml34rEzQ64yfy8+rksoazhJYxrjdFbkUfvAGuzrTfcUvaXhuaEJTu8McQ6dFdhjR18chG1DbVUjTumDzW7AS6tu4SzeEpbCtLRTkXq/rAIRN1WLkzc5bWJiZ4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZZCNgTLN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZZCNgTLN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4759C4CEC2
	for <ddprobe@lists.linux.dev>; Fri, 30 Aug 2024 18:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1725042353;
	bh=W/1+lU8s149y0KyjV9QQvvRMEV1dtwYeds/YqAPCj4w=;
	h=To:Subject:From:Date:From;
	b=ZZCNgTLNlB0GRO046mI19ilYnyu18LzRJKJWVDwQWppdbIE6uCnAvasZPG4INK6E7
	 8n05som4H1q9lM+jreCAYW2SmC+RTn6AqcpDUJUJqDxr5qIYN5ih092pLRW8ToHbYR
	 wnr/dZd0Xbh9dr3yuAV3OzFTqAA09V4N7uurHDlfU/d52rPiBHUooDcKFrOB/oUUSO
	 sThusgTH5TZtjeA0CbpLYmsUSmI4Gu5TbcpAXR/I+qtqwdfCq5ym/XwDJ6GUSnFh/T
	 VhoreU1N8ZBxMRC17JauaTdxRGr/yFYR0F6VSC7CQ8Y9v2Pv+nsVUiRn+WwWq8mvYo
	 1d3GGNtl3wdtQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93ECECA0EDC
	for <ddprobe@lists.linux.dev>; Fri, 30 Aug 2024 18:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172504235359.10063.4457382348119495203.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b562157102696301b6643eb1a672cc7a769264ac48721823cbfa6c81d4361eb2
Date: Fri, 30 Aug 2024 18:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1725042353
