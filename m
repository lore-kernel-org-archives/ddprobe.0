Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7B5763FE6
	for <ddprobe@lists.linux.dev>; Sun, 20 Mar 2022 17:31:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647797484;
	h=To:Subject:From:Message-Id:Date;
	bh=pix1eGfH+Vxo+uJeBIJP4Z3BDc7MOHEmiueJbzVwfxY=;
	b=a2mkDpAxEdZQzhCYtsgOeEFMX9Or09Y9WYFzNdfSrJqCcd2xeAVNxFkpQbDc+PLc
	6H4f7Ldrf1ji76Vn6B7Ir8szNyGoPbey2feif7DxPTAtidDQtmESGj7V4qhBT2i58kV
	5zdbU54qLNEclQEAfthSVKeVnvDUQyHd0744nT4U=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647797484;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=pix1eGfH+Vxo+uJeBIJP4Z3BDc7MOHEmiueJbzVwfxY=;
	b=ECF1mLSJ47oL8cPc05Jfg+A3/IpTNV5PraKkS/QvxXRYmoigm5cSQMWTnxDtfjKS
	3XIMZ3DHiz1cCB/BLNh60DbIJAJI2UwV9kBYV77uZsh+i0AAkZqWJtQN7nVUfWC/o/B
	4alY1RrG9JMUNT7BIOmMDIhXQMAebV+6B9/8rlk8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fa8623cc5-80847f60-2870-4fc8-bee4-1da79dbc3684-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 7d949db7180b157cab74a9ee78de0d532f9c6fd0087ca909716cb0811411c93c
Date: Sun, 20 Mar 2022 17:31:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.20-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647797484
