Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 573D410E3
	for <ddprobe@lists.linux.dev>; Tue, 20 Jun 2023 01:42:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CDB51C433C8
	for <ddprobe@lists.linux.dev>; Tue, 20 Jun 2023 01:42:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687225328;
	bh=2VluLj4UebsXM7a5rwipuRfd4Be9dMDd9cJRUISMOVE=;
	h=To:Subject:From:Date:From;
	b=sdp6z52s/vOLQ026lymtaTy+sv21rto10kiAb62eprdvdcDp7JwxGmNurTMhhqEjV
	 Drt4qUaUt5Ki7Y5Q/03avH5GEX6aWq1iIkL4Lz0j3yztwroQwBW5F54V0NKKXIVPoi
	 bjS5pThtsdsPSaHaTryUXzPVyfHZEkkQ2JjindH5Qcsm0X+SU5UlI1c+3KOLxqa3lR
	 sKxkePWUfgFfwb8j6e/Jss78cdSnnfyM7CFetuFSRS37xQLkrruWENNXkx1yuh7lR8
	 N/7sULYn3P5J9FMladjMgfWzN5zEHwTyWhymRKoDLDJcWur0YUe7fiVXxqqDI02jHM
	 uFNLoKxtP4HwA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF923EB64DA
	for <ddprobe@lists.linux.dev>; Tue, 20 Jun 2023 01:42:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168722532870.2456.4945888398443910420.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d675c11aadd48529b696f4f04ef0e4d484416ff10dd9788ca3d2885db11ef5ac
Date: Tue, 20 Jun 2023 01:42:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687225328
