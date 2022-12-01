Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C251FD51B
	for <ddprobe@lists.linux.dev>; Thu,  1 Dec 2022 00:00:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 768A4C433B5
	for <ddprobe@lists.linux.dev>; Thu,  1 Dec 2022 00:00:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669852854;
	bh=J3B4gJZmlrpl8kJ7wQoJubzzmmwmhTBCeGfs2yY60x8=;
	h=To:Subject:From:Date:From;
	b=MWbkWjFuqSEiYJSao3/V+tcW/2bmfm/8XpfWupwrPr0eS+LNSNkFuK5bJzt6C33+d
	 7j8CS5UgmAgT4AKhJWgYSoqdoo4sVSJatC8XjufJ+KiFOiMAzG1k12Jx8sTOiewXZB
	 r7VVFvljgQ2eg/ya30sndE9IsPZDB3Q+fiwiS0YQsPUfTohuq3OkMpt8FBu5DURvrm
	 SBMkZfOQbHjMSdDbLeHRZvQ9Vm1YkQp5UffyDojyIxF4+jivvms2laJ0IaOnb3ywfh
	 O4mHhnGp0ylavf3ArrUpt1Ht9PEDSWxViDVpaULOu3OXyjZrdEdNzAh4giYhnoi3I1
	 snSnzHlzRV6vg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 61103C4321E
	for <ddprobe@lists.linux.dev>; Thu,  1 Dec 2022 00:00:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166985285438.9938.4916881110370610077.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e893596f3282558930431451c2dc481aa8b59944c2d83b54e7cfdf3bbb808f6a
Date: Thu, 01 Dec 2022 00:00:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669852854
