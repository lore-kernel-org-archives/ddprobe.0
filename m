Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31DBF1C27
	for <ddprobe@lists.linux.dev>; Thu,  5 Jun 2025 07:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749107994; cv=none; b=kqbyD1ClpmN6jwF5SH67CENoZEKUs0iX7yU+Gj94FzTVubO7vXuRaaynW6fXgforTeFKkk3jGJH1Q55opKPpUAmlomekL2huAn7RgQdtmCvkBWzRYyq3hp1lFJ+MyjRbWdtZEHakdTQM6didhpQaGRcl66zRxAG59X1EZGEdzEE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749107994; c=relaxed/simple;
	bh=C9D/0ZQ6bbEd58aeUqjRewjQdQyOcRUoKRJlHLnqmCA=;
	h=To:Subject:From:Message-Id:Date; b=GWmeW7bCLpPNsGjLPju0IwlcJsjQFPHHHTHPAmkzsvIEvVtSwxH3pnMo2/l0XnB1s+idXIH4QSKgPPGJDpbreS/PDjpnSPEQqFBlQD/es/ayk/Z5MhUgCt+hNowW8wVvTlkwTSEAGh0u1ZjjN7ERyVW3N2q9o1sEinP34OldG9c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BmbEbgzy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BmbEbgzy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5E26C4CEE7
	for <ddprobe@lists.linux.dev>; Thu,  5 Jun 2025 07:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749107993;
	bh=C9D/0ZQ6bbEd58aeUqjRewjQdQyOcRUoKRJlHLnqmCA=;
	h=To:Subject:From:Date:From;
	b=BmbEbgzyfIgUDQsqtZ4nf+moK4GFG5l+YET7jIqRbhWktOlieglzywZapcjZdYmGC
	 fhdd+jQSdH9bY2Ndl5KSO7+FgTivWiTdggftWDoJw1tFhCgjpl5TVbBL6wJFWmyX6c
	 I4zeDpI+bz3QSH3bEH9xF3Zx/DbkG24rWuLqO+c8AaXZltjKn3Fcmb823DlyclPAhp
	 MgXUPCN2mSP7sWWtvn3PCVRDFglXOoh+/jmUm17CDIS1I0EuYnHT+NMe897fem3r/Z
	 5kOyvHhyi6sRZb9il8yjsoLP10Wm/BE2t20xIe6XhSy/LiOb5vl2h40+bI0nu5PFzs
	 F679lxAeUwz5w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92F9BC5B543
	for <ddprobe@lists.linux.dev>; Thu,  5 Jun 2025 07:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174910799359.9690.8044142899797755133.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bab07f921c7fa0d3f9949fb6f5a28cb36bdec1d636b94611fde8f712bbfc4e1a
Date: Thu, 05 Jun 2025 07:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749107993
