Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 75F81265CA6
	for <ddprobe@lists.linux.dev>; Sun, 10 May 2026 04:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778387434; cv=none; b=UPeQEG/Yg7nFLpD74fNut3jPd83Mx17phNKB+RJTOB3HfdjXfiid8EqbLL0waH4HmA8YW09vLRjNzTHA48RWuD0JS9t9KC2X55IWgu/X1ksE+DkJA54RVBoGB/UgEa4zHBLqAP3d5EvP7TS9Wgk4mylwQSrwGUeMrnT/AErN8rU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778387434; c=relaxed/simple;
	bh=cgMNMQUXtuDNfz8XmIU4RD/Q5a4TZ/w+1kKxGk2XldM=;
	h=To:Subject:From:Message-Id:Date; b=b0dIhEkPNV16cNwp5dqJ8uxr8hEINALxf5dI+SpKcddf2ZE3j56DdmMNsDpseyhPIjMtrT1hCCq+lCHE0Vv2swTwEXu/DV/motNCQjfc8AexECE7vu/cndTrMPwYgxpLb8JnBhb7wV6jdEkbk87Eg5C6wUH6QewT49uDHUX+fl4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BhNp8b0N; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BhNp8b0N"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 1BC6EC2BCB8
	for <ddprobe@lists.linux.dev>; Sun, 10 May 2026 04:30:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778387434;
	bh=cgMNMQUXtuDNfz8XmIU4RD/Q5a4TZ/w+1kKxGk2XldM=;
	h=To:Subject:From:Date:From;
	b=BhNp8b0NB7J8eZF/6eIgMhlkuGvpZTkQpcCcpqh+eKniPA1cy0C/QH1oQehVHl+OA
	 kFg4yHnoHpqi0L6PHNpbTYCfu9CBD4plJggDAXPCq7opcfZth1FnY2zN9hQN7LWdts
	 QXQgBtFojWEZbE0vRZJ7ZVj0RkrEkmB35oNSYXlvAvkRhu+gzM5g4YYLEvAS92Th3H
	 oUh6/KG/rFKLmjGjvPojxQo1XD9yq50OcZ94eb68BcaALeZ8OeNv4ulP43XJYDJB24
	 My3TdDFyjHONrOSQuMdpcnDJtVKIy7p8etcH2xuoEH9ePVxlOuZ/BRPrfXyHzWpvXO
	 K5dhWoplkX3cQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CF705CD3427
	for <ddprobe@lists.linux.dev>; Sun, 10 May 2026 04:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177838743380.10449.12165463629164614192.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3ec0158c2e2f768ed4914891bb7c7509b7990b4191b3008ec193c8890ba83e52
Date: Sun, 10 May 2026 04:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778387433
