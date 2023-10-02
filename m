Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 72EEF1E521
	for <ddprobe@lists.linux.dev>; Mon,  2 Oct 2023 22:36:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1AE0C433C7
	for <ddprobe@lists.linux.dev>; Mon,  2 Oct 2023 22:36:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1696286168;
	bh=HqKHtbGFvKeU1f/Q1bnl5K+wMVK9Qe+PAZeFCyj9Q4g=;
	h=To:Subject:From:Date:From;
	b=dWCmIeE/x+sQ8eyujboBrjYuJLN4uxvIRMD/POIlLEjkNJ0Fw1chKi/HArg4aBe2m
	 Cn+FYek9s91refBRjmbk8ULs1/dj+btXOZSfH8yswbkH1x05oG3cDipZmw0ueFwGJ3
	 5jZrj7AyIeYdY3b+YuH8SA4mGwKCdiqW6BZ9w3UEMKjzNPeuUKkLByExo4RTgmuYYZ
	 9XRAB7hvX+HjivgXp29UUcZs+lfzVXiMpz/tSIMi2NhGnu6r5IVFGnFyEXPO1PIiMJ
	 JjTNaiBhl4wqr4mEA5uIZBx92lXyWp2KCzwNL7LIFZPHoz1x5WF0Z1k7rIoFV63ynM
	 VKuGKd445/s0g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1C73E776CB
	for <ddprobe@lists.linux.dev>; Mon,  2 Oct 2023 22:36:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169628616871.30866.6316009189064404992.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 593cf2398149981a6d11fca2b59f95de0ed81a0a595b5ee8a065c39aa7eb6591
Date: Mon, 02 Oct 2023 22:36:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1696286168
