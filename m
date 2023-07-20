Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 60A901C01
	for <ddprobe@lists.linux.dev>; Thu, 20 Jul 2023 05:32:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DC594C433C8
	for <ddprobe@lists.linux.dev>; Thu, 20 Jul 2023 05:32:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1689831128;
	bh=I8q2EscuwdGuWj1TRlRxCJoQ5RQ3FVIcfJVkFNJaToY=;
	h=To:Subject:From:Date:From;
	b=UfQluBz6fFd4guvwgLzo78ObvdAYF3RqxmIxVnWJ+YFsz3fY8NpwfJ+tiIdLcHdQ0
	 /+hdO4EOgk80TI0fdgn42i3ojo/zaSE3+dGeSbev3KqP+gACWIavx2CZYpPdkp+t3K
	 ICccea/kTkX0BJPnmvRkY27iL2saQSyHJI88gnHd6cDRxLjpO8ssd4oqB7MJioV2/M
	 1JizPrvgJNyKoh+Hj54g34ryaIgHeZQf3pfYt2YqnTQXT76hJZezEdOGoVugiusaos
	 xWNRLV/AzpVztUeyjyNImn511o4bovyzNZs8E8UXUUTdzsym7WZieKQxtB/3S1hnAS
	 5/zZrfGOTZj3Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BF8B3EB64DA
	for <ddprobe@lists.linux.dev>; Thu, 20 Jul 2023 05:32:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168983112877.12891.16221748516689984135.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1cc5beaf9bba11e28c8b401e34fb8946cdd4b0347842767a43875211b0596fcc
Date: Thu, 20 Jul 2023 05:32:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1689831128
