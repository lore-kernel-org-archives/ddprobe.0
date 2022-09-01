Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C005A6AD6
	for <ddprobe@lists.linux.dev>; Thu,  1 Sep 2022 18:10:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 747C7C433D7
	for <ddprobe@lists.linux.dev>; Thu,  1 Sep 2022 18:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662055853;
	bh=49o8aEIabR9opHZhNwYDk2NF4xikPuKqtxhEPh9pmjM=;
	h=To:Subject:From:Date:From;
	b=KU6rBiY5QBDtVthBbM937hwjkaKxeMG2YY153KqhHazbGHKPnYBreFbVkTbQwpFjw
	 dQxHEZrjGZIcpn5flriEqApbwbhYht5psktFHMsjexLu2yoC11MTf6TXQP3dBOdQ6k
	 idhwYPQ7mNpxpizWVPBkx5/9P8ve7Lfq8Z/CJkzzTwqtnGOlVJ2JJGw7S2jqUQBEZG
	 /H7Ay600SVEjMj11rYGMjTRaO1ljH2LXpfyiF1LxEHDCJT9Tzo9lZckUXiOkYhIqZ+
	 5LdjKWllyY9OydguVFV/xw3lz1ZCFTGjG4EF4ppGGP1mY31TX3EJcn6ufePGnP4uXz
	 OVOWr3dkjkKpA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 58611ECAAD5
	for <ddprobe@lists.linux.dev>; Thu,  1 Sep 2022 18:10:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166205585335.13098.17460857830608705367.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 372d26fc30b6ddc5dba6bb1a4a24b309d445fb3aff072981c5b3b4da72eeafef
Date: Thu, 01 Sep 2022 18:10:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662055853
