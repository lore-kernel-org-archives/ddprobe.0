Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9D3F323AD
	for <ddprobe@lists.linux.dev>; Sun,  4 Jun 2023 18:39:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 05A4CC433EF
	for <ddprobe@lists.linux.dev>; Sun,  4 Jun 2023 18:39:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1685903946;
	bh=VtgeUxLRvIsMgHi+76Q4WDIHUG75zb3uswj9HIIjWpM=;
	h=To:Subject:From:Date:From;
	b=iiIqr2qaA6unb3ALiYXEJNo3O0fqYuTDJd2uqZFSMd05jw8lXxRv6KOqmGMt5DXda
	 xRUd49Wd0zEuCKqK9IPSaTSvwBFIO7z5emN6glzyG/Wj3J0lhDaRDLgQ+jJ0NQbQvD
	 draMqMVotDGfXCllYvkyl4Ty/RabzbErTI6BniqvLlzD5KZLbA2Ef25J2/JRR4GE+r
	 kY+35q1xOsWdHLSDyq0mJw2t/dyLdLYMBVvCQEr24xyuDB7R99eAWSd4WMaXVi5AcF
	 m3LegPHp7Lu9ghjIhqKuFKKwMS5blAsXm8dG54UbfJATUYc/fPT5eBkpeMH4d/cJjW
	 DLMlZC7d3QdTg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CDC75C7EE23
	for <ddprobe@lists.linux.dev>; Sun,  4 Jun 2023 18:39:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168590394576.17102.6809635814919520355.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 89c42605d7005c23946bd3d42052ed953385ab1fd313bc35c634134d7d869fd0
Date: Sun, 04 Jun 2023 18:39:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1685903945
