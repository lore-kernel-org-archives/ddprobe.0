Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 598D5A40
	for <ddprobe@lists.linux.dev>; Sun, 16 Apr 2023 01:15:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 061D2C433EF
	for <ddprobe@lists.linux.dev>; Sun, 16 Apr 2023 01:15:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1681607706;
	bh=c2xaw8Q1/gSX0wYx5Tos7RMYNR24ax5JkAksT7K5XfQ=;
	h=To:Subject:From:Date:From;
	b=PHASq1oGJsNduQel1sSd4/U2tIsPziMg98eHN+EQmnS+nnuqTqhjosuyrYLik19G3
	 JFcfrLZ6v4/MLicaLG/TQ36mmyZPqJYP+N6Y3MIL3P3PlgJF7ybl6rX8LYlC106y9h
	 L4FUsFl73rU/iX2pHMNDw9E3s+MyH0DpIn364jymNoBh9HSovT1k7V7fi5Vbw9ijuB
	 SvSybP0fyuBHm4fK4kBDzM3U0hlAdnyCBzb6mXkL0uwfkBeNQF6BsGjE4poQMjs7yJ
	 5GtAltxKa1zumG6F4mlyERhBT/pZWPF6rxJ2INIkYKGoYEu4t5pDP8i1NRpIJb/Gs9
	 PeCWGv7YzFUCg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CD0A5C77B70
	for <ddprobe@lists.linux.dev>; Sun, 16 Apr 2023 01:15:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168160770579.342.13629480785790609991.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 01b26a917f7524d4b079dd121012629367392397010f7936f6d0e37d3ac2d0e7
Date: Sun, 16 Apr 2023 01:15:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1681607705
