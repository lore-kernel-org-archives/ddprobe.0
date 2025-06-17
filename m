Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 270D44A3E
	for <ddprobe@lists.linux.dev>; Tue, 17 Jun 2025 13:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750166994; cv=none; b=UGXKDXmG2Jra6fUUE2FvJD0YaCB/njplwiuAF/8CC+Y8MMrwPa0HvK1xYSNjxSuceRjey27cKDB0cXHU7C/1x1FT55Wy5Zn90z6SDOR9WQlw/v8+sLvX2uQL9xvgKARDCBsROxSiVh5c4hIdqZHs+KMjPqpjy00dk+Ty4OMAvQA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750166994; c=relaxed/simple;
	bh=mi1QBq2Evxv8/siAUentKUkL2wGeRNwfBJVg2X7hJSk=;
	h=To:Subject:From:Message-Id:Date; b=ounQ/cyDWx2lFjZuqCcTcuUnx+kAyuBq1HnehvXPqUcsXu1bQyuMAVoehPoxQzR9of/rL2Da/XR7VYfpQ0DV90Z2YtpvPDMqq7EOrtq4NuvwDc5SlQba1V5Oi8lYFgD/aXmGXYqAf+V8D4wemB+LEYhdvRqlTuCjSbJPRF5xXbY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=so41OzPK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="so41OzPK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2951C4CEE3
	for <ddprobe@lists.linux.dev>; Tue, 17 Jun 2025 13:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750166993;
	bh=mi1QBq2Evxv8/siAUentKUkL2wGeRNwfBJVg2X7hJSk=;
	h=To:Subject:From:Date:From;
	b=so41OzPKSY8oLJmYTp2PrJEQdL1SPpzsyu/etaQfIAgbv/cGNjB5CroFt0sIaOcSI
	 1n01xstM3dVmJ1ppwwWFpMQVSoYbMa9PAZIVLds8pqNS7VJCxf2xxFaOj9y7YwDUnI
	 WMa+ZoImQGExtamUMFUkN7T9w73boXobWh3OH+xwNlIneBGweHsSCagauAy3JiJN/F
	 1FgTRT/VcWxq1mabX0iS/xNHpuldWXOrL63EgWWUEt9osteP0VB4hqwTBJ9jkqb/Jw
	 rZMt/bRMGA8HVuzP9pvN8mwZ9qbJL8n/LtUqLtVQlBtmCwUl3qioT9wA1dzRAKL71y
	 rdtgy/RNGdfFQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EBD5C71136
	for <ddprobe@lists.linux.dev>; Tue, 17 Jun 2025 13:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175016699357.12981.3893580652945818619.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9294bee273ed96e506ec784f448335e5561eb979659d7854fe2414471f520754
Date: Tue, 17 Jun 2025 13:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750166993
