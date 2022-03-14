Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 92ADB7A
	for <ddprobe@lists.linux.dev>; Mon, 14 Mar 2022 16:56:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647276985;
	h=To:Subject:From:Message-Id:Date;
	bh=MCNl1+QNpUVcddByrGmfY+1nRW5Lx0Quu+YH0pAgTDM=;
	b=FGLpJlIXpDbZc8679m3gcXCPMDSqbG1vTNIynyC8zL3RIlI7DSQOMkHaubb7pSpx
	lyJfj/KGrfpXfyiI36ZN3MGZt2snJONYk7P/IYhVBx+nCMKqkH+eDoC7fz3GCSVeQqS
	zgPEoMDryhqrVRNED4Bj1JHVoFlsoNmvtqJt7TdU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647276985;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=MCNl1+QNpUVcddByrGmfY+1nRW5Lx0Quu+YH0pAgTDM=;
	b=feUatmysxV+cM5KExKtnUP/CimReIZtOYVspu2Ko7olWv5T5A7VI+csZ6NViAUYl
	8UAWrqmA0agi4cdm/cLO8eZB3sQjV1PMCkdB84fBzLZN5PteeFkwEkKxFgokx+DsR5K
	KaANAgWxxqI8ba2T9DmOtok7/1psF202lN9C12C0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f895c0a30-064f8c48-0e04-46e4-b9e9-bd28f30b6050-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 233dbd33366777f371a6f8067a8204c5bf44c9df6338817806cc6d381f6909fa
Date: Mon, 14 Mar 2022 16:56:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.14-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647276984
