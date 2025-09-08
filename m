Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 300F3314A9A
	for <ddprobe@lists.linux.dev>; Mon,  8 Sep 2025 18:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757354994; cv=none; b=hfWLv/pbku3hVXAb3//hbb5btd9GRrNSwbraANiNgh/Fh86jwuYAdycXIBv/3u+JOmMabo9Mh77vDA+hrqK05O7bfWtdVMp7AeS0N2MEMAYvRe+6w4O0ygWFRJS4sAZYi3udn0C4S7sfu9Q5yT08iLCCccxEL0CqRZjS13cjsGk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757354994; c=relaxed/simple;
	bh=QPp7P5Hm1+jsMmkIoF+cUkwUuk5x2IMSnG1cwVFzFLY=;
	h=To:Subject:From:Message-Id:Date; b=M0nLAM1QJ/CfsDUEuXNBYOt8DTQhSQZFMFULlBtP5c/KDv+jRaML+imNtTiGW5fjcA0IdJr1lQPkmlaP8NLRXQRfOn5UaQVmO9f08Fe5BACztUvQ/92BFEG/EHCxa5UFQfedqG4vOj7sNXzn8C6i9+wBUmPZyDCiuMm6lMxRvGM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LTXxzv1B; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LTXxzv1B"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A21B1C4CEF5
	for <ddprobe@lists.linux.dev>; Mon,  8 Sep 2025 18:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757354993;
	bh=QPp7P5Hm1+jsMmkIoF+cUkwUuk5x2IMSnG1cwVFzFLY=;
	h=To:Subject:From:Date:From;
	b=LTXxzv1BiNr5lo8fPpxTmASTAIXAjcXQhgrrQbbBGw4D0Tj4RSxG9jcjeiPWsm/3Q
	 334fAe76l6ACk1O8Xh/66oI/wnNIT0OGuWW+0GvMfiEFNTl1jodKlQqq4cuJnMjQc4
	 3r6k1YdrLZl4RZDYaGjQGJAA72uHQtTioHb/k51WBs6YlZCgwKQJFWN72fwnY6L+ph
	 pEaWtGGOEfb7l5i7d3bXwGPDVZJLlohtiGmbmDIJUX9Q/fP5QYbiDAnGbEDqGFZH8f
	 ZMzyxdPzmJGPB23skEkQHGfx2TGxlDGZ+Fwyn39lhtb+7XtcBVEewxnAHPLYmL+WZ2
	 jicIf07X/Cmyg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F23BCAC581
	for <ddprobe@lists.linux.dev>; Mon,  8 Sep 2025 18:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175735499357.5683.3506967409391786391.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: de46f6537fd84a4faee18ed43d2e0115fd709ad3334b1819d1ef4eae6862d550
Date: Mon, 08 Sep 2025 18:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757354993
