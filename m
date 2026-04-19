Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A35A2D0C92
	for <ddprobe@lists.linux.dev>; Sun, 19 Apr 2026 09:47:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776592054; cv=none; b=Ty/Sj7riIjr23rHxrdc/gyb2+NFDLH6djEYPMbQmw63u2FLRQUYcOkl+EEXkW8CRpSPaVGH3oPeB/zaI/6MTMNXyxdwXOljUQN+7gy3LdCrGcE+8Gyddab51N2RvoVWnqx2Qrk8eqqndtM7GDx+IbadEqL4S54qoGvknMJDAD1s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776592054; c=relaxed/simple;
	bh=LG6W9XpVEfQPDIVDoVFM+KAHuc8QtLClUKvLcYofcdE=;
	h=To:Subject:From:Message-Id:Date; b=sC5OzZNl6w07bTuSxqk0QSvuwoqCuXVLgRPXwputCq73ED5kpygIYvRbmVJi9/r7SG8Vh0i3BJC2InbdsHCWnRNSQOaRn8TIWVyViMrZz7CUP+Nd53AvGxLmRct97tZo8h6RKIUgMJ2OipfUQsXWznXl3bftpyB0BYmjPL+Dlo8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lMYPmz/R; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lMYPmz/R"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C378CC2BCAF
	for <ddprobe@lists.linux.dev>; Sun, 19 Apr 2026 09:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776592053;
	bh=LG6W9XpVEfQPDIVDoVFM+KAHuc8QtLClUKvLcYofcdE=;
	h=To:Subject:From:Date:From;
	b=lMYPmz/RrkjAFZXNMvtAAAHkC53sosTfi59AKxLHGHNZsApw3zxMQvtvdkceU9Plk
	 LvjhXpLzEsVUi6aGChZSREoCrBq28C54kU+WF5rkUKNSLlirHFl7EJ1bDIgGB0IFL5
	 JhDY3Clt6BKlQfnftXiI7aANqlI80IBJcwpNg9ftf/DoYJzDMUsgwsFwm+FAnqDYTM
	 udyI6NmJ/YRzN6ZG0QrX8up7jOvt/aDUNWAbmSCNWOW6meht8hw4vYGDLw7iiuHS2B
	 w9jdJxckmRJAkc0aU1Bo2qsYyEaNNB0kzlp2LTaW9QOiilUIZq2yYTUer+noNkukrJ
	 GAoipSqvyE4pQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B04E2EA7192
	for <ddprobe@lists.linux.dev>; Sun, 19 Apr 2026 09:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177659205368.24136.16213675363459305513.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 14b0f891efa272a30a66b7c18496c0bfef96313a8fd589144c5e112ae4e597b3
Date: Sun, 19 Apr 2026 09:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776592053
