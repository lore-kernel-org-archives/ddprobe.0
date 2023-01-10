Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0C9BBA92B
	for <ddprobe@lists.linux.dev>; Tue, 10 Jan 2023 19:11:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id A920AC433D2
	for <ddprobe@lists.linux.dev>; Tue, 10 Jan 2023 19:11:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673377887;
	bh=suvc6op0PwFdIu8zjtMNrt6RLxnhevXtIugwUAw/WzU=;
	h=To:Subject:From:Date:From;
	b=hvJ+rH8uEMwn8FRlbI+0hj0tQF8bZ3hpKm7YXuoQE33eDwdogcWGHDHQhCV6Q9ofC
	 BqQQdONzvR9pOG+u6RrQoSmWZCSbJMtr5GXM1zrtHPg1qaW7vzCmwjZjTXxpCX6Ks9
	 Sjv1V7Tw0M3ffPMGFhxu/MDOyOboSpEqgHKRp6PURXByhV0asdFHhdM9YH4uUYmMEB
	 Tsz2ZkVor4qcV5LfEZljYMI7ty9nHrvM5V1CJr8P3J2h7zPz4Fm5kP8idWmT4wWFLW
	 j8GIciVlmeYHcs6joOxxSz69EDr8QCzaRf2acsg9S21s28RC2xiqSO7bzi+s51dznF
	 wgIVVIajbh4ag==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 88AA2C46467
	for <ddprobe@lists.linux.dev>; Tue, 10 Jan 2023 19:11:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167337788754.10209.800101749096952841.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3eee0f78e33707013ecda80e7c7248010f144677fef4648fb8d12ec022675b41
Date: Tue, 10 Jan 2023 19:11:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673377887
