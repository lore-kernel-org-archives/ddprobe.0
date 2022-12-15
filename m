Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CE16917E3
	for <ddprobe@lists.linux.dev>; Thu, 15 Dec 2022 03:31:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7D975C433D2
	for <ddprobe@lists.linux.dev>; Thu, 15 Dec 2022 03:31:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671075087;
	bh=iUfde6jxZ6IMYzL9FDHc0j4JyDfat9YNd4jodLKXlHE=;
	h=To:Subject:From:Date:From;
	b=DDHTu2UMhjPe7HZ6JlTbLEhPz60O4N7hWj+Lh6SJbuXN+VS7oC90CbsDWGlJjiZfp
	 Hg2Z5+qAsTDImwpQAJtiFQfJ7oU1mvP18/G7mPkovG1WRkdppUQNky5SB9MPKq/fA7
	 ZKJ3rav1ObFNC7kmBFUZ3U+ZFgo6GfFTBSyhGdp8xCY44UZ5d7+lT6FnhSg/Wdaufa
	 HaD1FW+uMQq8VzOe/9dd5vvf+zTWyWGou/WkR4jdX5ECsCcx5+Da5ZoEncQCJz98lL
	 +xHeFnVt5hLkNY0JDuV/0WUutphVLPGWum8NCcV2XChxb/IbxPdVV6KUwu7MUGjUdB
	 SE1BUJOf6EVHQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 61441C4332F
	for <ddprobe@lists.linux.dev>; Thu, 15 Dec 2022 03:31:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167107508738.25045.11301946601146594654.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 83a888f8767150b3ac5634d79f7911fc578377d98419db00c9d7d3b33d410a32
Date: Thu, 15 Dec 2022 03:31:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671075087
