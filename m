Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B77152570
	for <ddprobe@lists.linux.dev>; Thu, 27 Oct 2022 22:50:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 62C4DC433C1
	for <ddprobe@lists.linux.dev>; Thu, 27 Oct 2022 22:50:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666911054;
	bh=o7CBCTssQSC513sFAzONiuhJJqeNmXM01RDlDBn7U0w=;
	h=To:Subject:From:Date:From;
	b=L6c51fvIrq/8Vw2YEBe/EJcWqxZwfHmVuGH6omrUZDIPk0CMjxEqJmHKTrtp9UVyn
	 Smx2cKsNs+hgXbUVF2sxx+zXu24XM/8kABcivWfkgFPooKShA1ovlIbxaqWAGBrMse
	 0FAmXW5mprQM/uqdwT3KKmv3k0cpzFdS4C4n3KKPRPgBKbJMD/WFoFjrXAYihUFM+o
	 ppeeK1NnHAgT0VOu1d9NMaQbVf4fA2SeFI/9U9h0Y9MVMwWDbrL1u1X05Q9foOYIRU
	 ql7dXaL5aiBoHJokvWoBhT7mQezBwfvhOT67Uq04075Ju4xlQOpQhtf+WVWNynGJoL
	 Q/rJ6QtekwXvg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4EE7DFA373D
	for <ddprobe@lists.linux.dev>; Thu, 27 Oct 2022 22:50:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166691105431.25871.16524485498618365113.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 07c97d7104a4f935ee766ca988a8c191b42a49590242d1e788d69e484656ce1d
Date: Thu, 27 Oct 2022 22:50:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666911054
