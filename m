Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 186EF2941D
	for <ddprobe@lists.linux.dev>; Thu, 16 Nov 2023 12:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Zlq6QM9j"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 897F8C433C8
	for <ddprobe@lists.linux.dev>; Thu, 16 Nov 2023 12:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1700137096;
	bh=uoWB09x9KRI0W0WPtEZ06/kbMoY24vJpZwESa29GBAI=;
	h=To:Subject:From:Date:From;
	b=Zlq6QM9j9A+rwCHEjMVS7Uj4TqdYLPkQk3wXD81LcLKXo5yBoB7ddpK7LwWwO/yG4
	 wqovXi/TqrGCAeG2AzmuKkMCK5maQUT8QTbFrldql45FV72202ySZY3AGEzpq6RKmP
	 Q0Dhk8uE0FV47tUkZ3ACp7g5FUNSUhDR4C0lMYG63dBDgWJY4XGenEkDLuEsoWoTSr
	 +ZkmwW1aSHwyJHieetZkfGj2D5EJmNQWwgE+Fady9iWun7e4hNv5TcTHQsmoawyQgU
	 blVyVNg4tbp5aPM5yuIpfGPl3zamfdijUtQ6LhlcfaIw89FHvdpQa33Hziq3bJeXBJ
	 9j3ap+RfO6hQQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 67D19C5ACB3
	for <ddprobe@lists.linux.dev>; Thu, 16 Nov 2023 12:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170013709641.21259.567123439283090204.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 684a875a5b8022cdac5e668eeb07b65fc9328d6564428cfc0eae2f931b6a84e4
Date: Thu, 16 Nov 2023 12:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1700137096
