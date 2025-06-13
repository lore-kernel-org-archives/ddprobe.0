Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 41ADF222574
	for <ddprobe@lists.linux.dev>; Fri, 13 Jun 2025 18:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749838794; cv=none; b=Aasu3AbG4GLKv3lDHcg5HQe5lium8F55U3gbIJcCWYGzdq9v72csMRxdciw0IsespM8qY/meBrrF+GEgIk8va9UptqD5KjI3I6LMicw0IvNYRivNWmB71kZxdBptVZ1Q86OfGjU6a7ExPFQ028w1ZngdPzCHxpmlSWayAjJJ5F0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749838794; c=relaxed/simple;
	bh=nVH8oq4Gd5sO3++XZCBYpBZyZ4ABLfVKkQtDITpYfmg=;
	h=To:Subject:From:Message-Id:Date; b=e6kcUoImaUP1ESTKlrhS2l9Y3rr3RCpqnwshYmUxtqgQuXBH8TvzNqk3+QWFU6kdhdinFnxVvHs9tV7AOLv9iZPLIyiu3qbqe4zwrbdVFc1b9vtwbaHcBGh/kjtf+WLgQMBOZ6Q6cRMAeLoIT00ZW7Kj/cxzgzBhAihzxe9C598=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OZ6b3GfW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OZ6b3GfW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8E2AC4CEE3
	for <ddprobe@lists.linux.dev>; Fri, 13 Jun 2025 18:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749838793;
	bh=nVH8oq4Gd5sO3++XZCBYpBZyZ4ABLfVKkQtDITpYfmg=;
	h=To:Subject:From:Date:From;
	b=OZ6b3GfWqa/IW/q+G6kLJjUbm9ynYrmOAWMCQozbOP7RWEwdYzK2OlUXcqP+sTEyA
	 bK9cwlAGxecPjvwYwNXn0Qm6deeF9KdUK9SXmCfNqINp3hN72bIbbIcRkGixLpNzrm
	 WKGV5bcTXX74oePp11OJ77ZrWdBdCPntR8G095UNnpY2lDUjlBf5og1yTTr9N7uoAa
	 vLozC0eoYrEXBMNlqiLr5rFO+9tpIZuTPvz1R8IJQkizIjO9emrsnPnF/rzfUpLKi+
	 mOc23at/HY9RzagKDH7vkO1Gdi0MHwzv8y85zmwLJpVngMaC3tctbPSfZ2YHqA6LjL
	 AGM+CxoIMGyCQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92FD0C71136
	for <ddprobe@lists.linux.dev>; Fri, 13 Jun 2025 18:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174983879359.12109.12593710339169009606.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 425ea08981876ef88540951716e0712189541135b6ffbdeabda3a944499e7be1
Date: Fri, 13 Jun 2025 18:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749838793
