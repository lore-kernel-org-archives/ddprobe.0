Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E614F1103
	for <ddprobe@lists.linux.dev>; Fri,  6 Jan 2023 11:01:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7B9E7C433F0
	for <ddprobe@lists.linux.dev>; Fri,  6 Jan 2023 11:01:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673002887;
	bh=BQ0tZtRwhFZniouT6wVRnnqXCns3Cs7Fubu5vQg8V4A=;
	h=To:Subject:From:Date:From;
	b=U215zwtONckC/4ONvZ9Gszknd/4OGnZQFwbxJTmUtXa+4b8OX7uxIjTgBvHNqdjAo
	 bPcRxcJqI1TIJtpQXmEXvxfjI9E5EMvWKVJHhovpA+Hji7IzTJKvz8UXCNUehUPcKB
	 z12Y0QLuHJVLOENAB79fPxUQy9iAPes1MQEnJNZv4V1WVlcwhoyed14t1/gOpEfkn1
	 XFP7P2WYWbcjmzWucbdfynF8mCD6RlFiHai+RDxKjft4DkSmyI8hWYv4/vfVQFLYth
	 ukDMFBg/7P1AYvDXXhE4pqjeiAPR2flwlhM5ofjuEy64x4eDLnO45uO5Vtp/nCQZIL
	 Qbk0B8dObe1lg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 661E6C5479D
	for <ddprobe@lists.linux.dev>; Fri,  6 Jan 2023 11:01:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167300288741.13737.8328856502494516023.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3806c2705148c1b64c9ad109fcc7b17e5393a713c78980f890e7b086b2ff22b7
Date: Fri, 06 Jan 2023 11:01:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673002887
