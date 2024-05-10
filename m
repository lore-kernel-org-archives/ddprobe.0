Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 53642481BA
	for <ddprobe@lists.linux.dev>; Fri, 10 May 2024 21:52:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715377943; cv=none; b=Rc+jYZw8hXaaB/cZf2uT0WDMK+cBB75/SYBFCPnVYu4YAWHdeJVvPKk9SgwsGyzKd4flcE5VMBAeyGMmXk0Mp0FkYovYuiAiiRkEDo8s1Zl7TZ7fHM51sIELCT9LnQ/EFKHH/LW++1ilHzOGB3kUYwnzjS7K4LC3YE0A3tcWB/0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715377943; c=relaxed/simple;
	bh=Iwe0HuWbRNNOpO9SJpSqfI6cYejMlpKlMs2s2TjpLnw=;
	h=To:Subject:From:Message-Id:Date; b=Gh95xPj4I4xuwjINXXFx9tik8bZad5AAnC4EBHR1aP1ZRRY6UhS3lbxPCPICErAuen2zRgAJ+T41CshOXarTZviSYUalMh20RIw+NYVb8uiq3D0n7E+JJKwzj8AMVaT4KBLxzLY1IGA9h3akD8LU6h03q8XkA5SKBDsqO0cy5Qs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=N0I3cLDB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="N0I3cLDB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D9841C113CC
	for <ddprobe@lists.linux.dev>; Fri, 10 May 2024 21:52:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715377942;
	bh=Iwe0HuWbRNNOpO9SJpSqfI6cYejMlpKlMs2s2TjpLnw=;
	h=To:Subject:From:Date:From;
	b=N0I3cLDBTKVLM4iNZAuuhv6IaLFJ0fPCykr3B3EM/oK0Paye4nhiIZSzBkv3SwhiD
	 IDduRFecS+kodg5Bqa6f8OGnAoc997qVZD6zfG5bBSCvoLPj8Cvh3M9tA5Dru5Dag5
	 Uzz0ljRWiYkMk5xGesmpYrQp/cVf7XNWX87HH8ami6MHB9T0I6VCeZKMcEFEN16pVI
	 WyAa4wAHqt5UEE9YovGVTLvspASWSn2+u7Yggxb6vMoLlqOCcGmlhTYbksd1Sb308O
	 Q1zmEeN/hMpjiBXmfr+iA1/jcmwNAk1lbY5mmyswam/aMxEpcBh7170f/Epu8D5Ke4
	 8SRuTpthVK4Ew==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C1311C25B10
	for <ddprobe@lists.linux.dev>; Fri, 10 May 2024 21:52:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171537794277.29455.8771354981063502939.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 01bfd42d193d1bdc55052106f857aa7961ce174b54e90a2499df251f5ee12bb9
Date: Fri, 10 May 2024 21:52:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715377942
