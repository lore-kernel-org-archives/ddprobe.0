Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 473031754B
	for <ddprobe@lists.linux.dev>; Mon,  2 Jun 2025 08:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748853594; cv=none; b=HBz7lvuCI12y5XXeOMB2E+DYDde9UfN1Nvul2FniHe66lGwj2W3YXYEpx+cEm/6QItpyO1Eutgdl0+ix4G+R2pNIIpnt4/WJHokXs3MxDWe9Lcqvhi4LlchyZl8nNWHSWrvsiSSc+YsDVNSuP9n5a1+kWfZadRhIdAH5fJWTsc4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748853594; c=relaxed/simple;
	bh=E2oItsEP0uVs4flCstS+XrJeIFLHgkUdpW2Oj3FUXOs=;
	h=To:Subject:From:Message-Id:Date; b=X5aFSTroaX7aaf+MqciEOBL7AoCUQW1ZHmRCYe7YNdiSSuIihj05+1TuiqUhD3Yu6/DNWbkWQU8ymZaaymvlXMwNWKIVzJPGpxbXmr0DSrOQQ1tJjBp9cNd0NrwBmYqEylN7o1G+9LR/JGkkRzCLOf7GjhIAUQ0myxPjeBmw9BM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PBT9FkHK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PBT9FkHK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD72FC4CEEB
	for <ddprobe@lists.linux.dev>; Mon,  2 Jun 2025 08:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748853593;
	bh=E2oItsEP0uVs4flCstS+XrJeIFLHgkUdpW2Oj3FUXOs=;
	h=To:Subject:From:Date:From;
	b=PBT9FkHKO9tGHUGmkDS5+oGRLZNWRXcQSzzSaqAGRyG/HqdYGLvC+cAc8revnFgGl
	 jCFZBNjU3TPscWC4vLRq+PmbkZxkhpCjHljyrjlgakaBxIc8vDSlDJELU3Ak0hYpSU
	 kOaPK49GfAq83a5IBuFHVesoKN5QZfzQ+whFTGTmKLZSoivlbfVxjqTKVf+/y4qXVW
	 Ej7iAwvNJ4uguiALr2qid9iCYpuljiw8HEoW+P17lNwR1k0PdCvpJ19URvAer6PoGJ
	 1ZTpdzqnMFMx7Q35Sp7DB5ajlcyhKGAAG4xABnKWc3YW54KguWHJzzxJkM6YA8GA5u
	 ZPLmzq4SdJbaw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9AAB3C54FB3
	for <ddprobe@lists.linux.dev>; Mon,  2 Jun 2025 08:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174885359359.6719.12444881211930058281.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fa60d682bf3cf2a524c90eb03578db75bbefed309d6ccbe336e72a11a2bbb0dd
Date: Mon, 02 Jun 2025 08:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748853593
