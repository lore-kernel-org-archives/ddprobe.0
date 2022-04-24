Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 56ED03225
	for <ddprobe@lists.linux.dev>; Sun, 24 Apr 2022 16:29:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650817798;
	h=To:Subject:From:Message-Id:Date;
	bh=TPPz0eGTXrS1kpcipHDh3Opw+8ATYkLpY7/a3WnJYQo=;
	b=i7EMlTnCrGXe9jMitbxmbTR/KGSO5BGRbedmhVpYmqn13k8+FMMijUIQaXRvJj/k
	DaZknmVW2fyKXRuafAGdQS8px/kisqo82A3V0a/LWknCwerP9tCutoI2Zo95DeTFmhF
	+YaCfI3K59OU01pe0mZy2oPfyPdZA5fMdcjfUFvo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650817798;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=TPPz0eGTXrS1kpcipHDh3Opw+8ATYkLpY7/a3WnJYQo=;
	b=QXSIRDRhJKuS2ZI2vs5GC1ahvPoTMTBUnedT4C65ugAU891RG0yblKi29fUMaEKf
	V8srhubCzjouYYoCBmorBgGZ72PLTKGwUEEThNVEYRBnV7179X5LsAea3bw6oOlYdgC
	TjAO0Er+cIJFytvH7WeE+6TOIjMXhVVAi4X5yOnQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101805c689097-ea5440fc-2b50-426f-bc01-245a95c6c394-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 2e900911b3625b2f9e429303b0be710aaf23c48c119caafc5cd13787dda13a99
Date: Sun, 24 Apr 2022 16:29:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.24-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650817798
