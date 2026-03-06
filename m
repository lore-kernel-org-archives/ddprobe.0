Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 078932EC09B
	for <ddprobe@lists.linux.dev>; Fri,  6 Mar 2026 02:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772763294; cv=none; b=V0icFIdjyD4itdu21ksmFpSNxK5YA6Qhg8Apwa3RRKHqXA2Hrmzxaq5RNyPFb3nGHZOI1BE+ZrurtHdgTSyhKu7k6qFWjQuylhNrsHQzZAzJT9c6QTzlc2rP8VeE5iD9vIo1Kx3thB5aZguiLI5xEVFf3/Ut6vPM+ug9PWFLm3w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772763294; c=relaxed/simple;
	bh=5OEXW+zdsDZwF6Ug8PhFNlqH4L6IrPNHdGkku73E5I0=;
	h=To:Subject:From:Message-Id:Date; b=m2VU0dvsv3o9f3OuKE9SVq5q5ny9X1q6mCJSqchSqO3jLEMwL3KxLCy9Y1buIFk+Iybo/UCp/6Q+OOib7S6AM3oHEJ4dCUPa/HFrae+UlKg8/kzm7GeWK+PP/e3fbVCRyrFIZGXygWuRCi6MWxWIreaHD0fkrqgnMnOgmT16lSc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BtUjv1Gg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BtUjv1Gg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABEBDC19423
	for <ddprobe@lists.linux.dev>; Fri,  6 Mar 2026 02:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772763293;
	bh=5OEXW+zdsDZwF6Ug8PhFNlqH4L6IrPNHdGkku73E5I0=;
	h=To:Subject:From:Date:From;
	b=BtUjv1Gg89PPJZR9O1CY2dFmqMRa5TkoQn1UzhIlxKdb13NlgazYVmwpqP4nwqPPa
	 pJ7pu2R8/AvMyKzPFjdB/s1M8bA47INdI9v9NDLw5qGzJZ3qar44vHXYnZpCj01uzK
	 8ej1RByNL4/IK4s7zJcEhtgE2Z0Yn6ciAIZSKQyvWBVUiIVNbdd/1OGcoLmGtdCdfD
	 J4qNd8UcFFO+tQgeSsyNKt9zpyiZpDLvTab5plaDyGYq81t2jaLhRlCIN9b6II5Oj1
	 qFAENEQQVMNEGqdts7/FXSnnHCSrZIn6cobQqd3k/TNi1+Ar4Sc4WdPGstnCRnGUnI
	 Y6EGXkHex6v4Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9773DF513E9
	for <ddprobe@lists.linux.dev>; Fri,  6 Mar 2026 02:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177276329359.12927.5864397343187539214.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 403254d29de774d492838effe2c0f68cb9cf8db162cbd16ef28c5773503dd1c5
Date: Fri, 06 Mar 2026 02:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772763293
