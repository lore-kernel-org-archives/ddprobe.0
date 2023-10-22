Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 207D33C30
	for <ddprobe@lists.linux.dev>; Sun, 22 Oct 2023 18:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PyxW8mo7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 910F5C433C8
	for <ddprobe@lists.linux.dev>; Sun, 22 Oct 2023 18:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1697998696;
	bh=DQRF/geD1uhbl8htIB8yjOZNJQ/u06InoGOYxZbmHyY=;
	h=To:Subject:From:Date:From;
	b=PyxW8mo7DvpWMwW7VYtsD68zZ9/jiQ7Lc2IYZ2o+RufEFoZOlpwZYieC3TNvdVaMk
	 Uq1SG1D6J2johLofB1BthlHHN3AF0E9uEUatVYwgvUS4LfANUa4wVEy5oY2TtUaSdN
	 4PH1QdBqRdfZx7elsKsmq11tdagjHpiIK5FQGVdMnt/kmZZvyj6hNOt9q9o2ItPLLq
	 IhL6vvoGBnhUKqdWwAjpQCHYCxJlR4A87P7PLWXv0pdX3JOr0rDB0qAk1fM3koOSZt
	 tHK1+k83ZjeTU+huRPm16ckABlTd4vXyUAA++N5FQiDE1PVrjphOqgXitsH8ulX46C
	 Ufcj9PC+vC7yg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6F7FBCDB474
	for <ddprobe@lists.linux.dev>; Sun, 22 Oct 2023 18:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169799869644.6733.11731959888326563602.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1f101a2267a22168acbadb8bb7763f134c54ac6d3d49ca946494c31f76787a8b
Date: Sun, 22 Oct 2023 18:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1697998696
