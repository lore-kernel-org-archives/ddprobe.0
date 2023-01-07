Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E9068185B
	for <ddprobe@lists.linux.dev>; Sat,  7 Jan 2023 23:51:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8E541C433D2
	for <ddprobe@lists.linux.dev>; Sat,  7 Jan 2023 23:51:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673135487;
	bh=aRPqQhMSvm17byDxKKPgeLV8stiT8whVa0+/xntD2I4=;
	h=To:Subject:From:Date:From;
	b=N2SB+gjFaxTCnctoWOMKCZqvAZzpCkVV39WYPMfSHrF7PYJl6MlYJAqEXjoE8fw4G
	 QkiVsGqs0I4mtT2Ihzq4qc9ZGPR+HPJWQ1qdN4SWOVjWq3HomArJikk/SQthb08c43
	 EuC/HXeAMFvohLaa/P6kHVnHWUj3XtIEFYxWdagbDxFY8jVdTfPZPhgyk6ZkQOKI5z
	 Gq+pVwzATEpkNR8QoguUYGRu7e2rNjUdz9UwX8pKiQK+3TJYykSzh1I7IedqSH86/E
	 NlhvHcRpkEwxIgq1BCjsnYcu8oce1HYZThIsHmN/K/fo0V8cl+NBR2GCKh+RiXJglf
	 130bilgcPl8gA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 72035C46467
	for <ddprobe@lists.linux.dev>; Sat,  7 Jan 2023 23:51:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167313548743.29316.7583225113827114755.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c4ba8c86b1e231296d8ec2bc038d2a80f00e33d4274cba8dd4865e0e604d5a4e
Date: Sat, 07 Jan 2023 23:51:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673135487
