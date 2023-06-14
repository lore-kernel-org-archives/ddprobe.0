Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9314A7F
	for <ddprobe@lists.linux.dev>; Wed, 14 Jun 2023 07:47:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E5E0CC433C8
	for <ddprobe@lists.linux.dev>; Wed, 14 Jun 2023 07:47:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1686728828;
	bh=zTV9Yjb2xYJkoqnofgbmHQSkAkaDgrmgHOBddqCBWZ8=;
	h=To:Subject:From:Date:From;
	b=ipE0UplFGa+ApF6JgE75faEU7IJsidtB9D92fKdNJ4AZg9gfptrHrxzyhXqL2NwQN
	 9Rmo4Ts51WbbsE9R50r1PusVaLGRB55luqBhj41L/oczkb3rgycIEaRi78P5VDbCbK
	 mC6qz5x6cU+7+h3O/dpwPCqmjDXJpYT+YOtiR4HPHIIwHM/KeB01L9vctwargVqTPC
	 P439cTTQ+16K3A71REnuU3aJzG5gltFvMmZw1mQhEAXq936A3vGQsr0aSScqfuqWvV
	 +p1HwoXkPDiqF/xy9yL4L5v/vOqXcXZlYP4J9agmcTgDvZp5HThyGHoyNALW+sydlA
	 Sr1SP7VjnyZYg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B8985EB64D9
	for <ddprobe@lists.linux.dev>; Wed, 14 Jun 2023 07:47:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168672882874.11987.13362522213177380697.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3a5696827b7ab513c6bc69ccf3be6544fb4002659a49860caa8eaac22eb82b2e
Date: Wed, 14 Jun 2023 07:47:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1686728828
