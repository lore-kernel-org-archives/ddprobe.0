Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E054E33C9
	for <ddprobe@lists.linux.dev>; Mon, 31 Oct 2022 17:20:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8511BC433D6
	for <ddprobe@lists.linux.dev>; Mon, 31 Oct 2022 17:20:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1667236854;
	bh=BDcrlyDERX6Uq3vLbcEYQQu4lzBbJYqH9NKAviiFZtE=;
	h=To:Subject:From:Date:From;
	b=L0ErNZDUmzym1QtM+z2uqaDoFZHJu6ejyEb6mlz0VG/PQq3rMZz0SujtxJegOsgLI
	 zq69Dqd+ThXLGtdkaEOpOYgc/Jv93SpIxoFtX2/8R4zG+X0SQTnbqqcix7EOpv2X4B
	 kCXUAjZ3TOBqIhc0oWpouviwS9JJDpelOY8M5kEhlkqPEPSOSQyQK6NX3++lbfAKU/
	 dpXYGtBa59hGWzgChP7ueO+dK8h9AbJEurJVmvqltsTc2aPUtJBE/h3iPNU/Qdt9VC
	 CwOa7tPYR1+6hoTKH9pkP5VYlzzY6bUrN1FTSSeYZPQUfFwFDm7tmE3Q1QjJ1TEx/h
	 rgYmEb2UHqAkQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6546AECAAA1
	for <ddprobe@lists.linux.dev>; Mon, 31 Oct 2022 17:20:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166723685440.28026.8103215332121790491.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 81ed66937b4a0252667e3a1b5dc27ad96a8c20af9a2ba52b99ece9bf37d8f6a6
Date: Mon, 31 Oct 2022 17:20:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1667236854
