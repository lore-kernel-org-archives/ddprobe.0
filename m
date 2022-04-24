Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F0BB57A
	for <ddprobe@lists.linux.dev>; Sun, 24 Apr 2022 08:43:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650789838;
	h=To:Subject:From:Message-Id:Date;
	bh=KxeJGP59QF/yN++YsQ3OcuicVcEtA3Gm20RKON6HtZ8=;
	b=mGJDDjrf1KxoVd8DoV5Pnzwf8F9WlYY4F64pgb9cSepZHm2W5+5DFLH2rkoH19h8
	ptF0qnyDvP5m84BgAM9liO10BF1EB4sXeMyRKgmE74V/vYOsItdjWGUWe+rbGS0Nx5F
	xsIthtyUWIlc01ExKMUXPzFBC2wf8NPzKmpCDiP8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650789838;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=KxeJGP59QF/yN++YsQ3OcuicVcEtA3Gm20RKON6HtZ8=;
	b=UUw4eBhBMN0dVrObpb1INFoCpKWz7OC72NFci0tU6pGvogRIIph7qGebwgatY17a
	Fx2GtDTgpKS1eBdq4EC7YVzi3EMrI3mqJxzDlf9EDcvCVr3hvgb99Z68K3i08pOCvtF
	QLsztH4ea058Q0aLBwN00dyz9CH5b0GqFHDv+87I=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101805abdeddc-7127ab4a-1be4-40cd-90ee-89efb0cc8152-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 18fdab8ecf76ebd173bded98e8737423b8554da0f50af316a0d87c0afd55418d
Date: Sun, 24 Apr 2022 08:43:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.24-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650789838
