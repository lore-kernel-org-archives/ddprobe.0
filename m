Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E60B238C12
	for <ddprobe@lists.linux.dev>; Fri, 25 Jul 2025 14:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753455594; cv=none; b=OwEpB12NspwSdsUdtWWbNIQEsubzaKYToLq/Ct/eYVPflixGG4mzpDq2x9KjQZtysrE7K9EbVmRDW2T65toPL9yDnJFm5ys8GGN1img0QOlZ32+sSfB6suT7HXm+xZGbGWQJZBvKwRmy3IIDTVgqa5mzshYbMsg18DIqEsgMj4U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753455594; c=relaxed/simple;
	bh=P2N+vxr35/j4rwVxiw2hqCPlL/O/6UQmU5e+i8NYSpc=;
	h=To:Subject:From:Message-Id:Date; b=e86q+18m1JM0Gx0cBqq6qXw1TXM4A2pvRyuNAUwr/XvKQy1zwYA6StPuo8yAPXhz3mW6HI22b86Pa1q1EQonjrNMV75eJQFXys3TCr2DfDYBWpZTWC5Yxo4wOW5lUak9bd99PN6QUFk5QzQ9M20zPNKeQ7fbsY3YDFhmkgoMJJA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QNb/18uJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QNb/18uJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BC62AC4CEE7
	for <ddprobe@lists.linux.dev>; Fri, 25 Jul 2025 14:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753455593;
	bh=P2N+vxr35/j4rwVxiw2hqCPlL/O/6UQmU5e+i8NYSpc=;
	h=To:Subject:From:Date:From;
	b=QNb/18uJMmedKvLDt3rs4XlSbwct4YYsa6UAe2e/w6PfF7HFI91VZeZck3Ga5ziN7
	 UaIKum8qzRmuAawfhzBNdaI9/GStwBFLvnrGNQHv4NwyZgD+CxXWCHCGjCmdz/5unH
	 oLjeq1aBoH1zvIhlx7Fk7BSfq/B0suVIYSAM7Mm+px8YYP8x/jDbe+Kd/49V/OzKDK
	 9NP0PmEBUVpmgbV1sxM65ACYqw1e9ke/nQlPhnDYbkQSc5TFxRfoLKITK4DK1xSDm8
	 WANUY3tsUZGH0ApLoZa78x2QdWf2BMw46nTakZIYW6N2VBJ4x261Zdm7nJvvtygoYM
	 a56XK+nwbvUkg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E1B9C87FCE
	for <ddprobe@lists.linux.dev>; Fri, 25 Jul 2025 14:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175345559363.7186.2132285734991267589.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8609ff603cf697d3a5adf9f52a80444619199d2aa4fdd8dd4554a7b2b7b7b3b8
Date: Fri, 25 Jul 2025 14:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753455593
