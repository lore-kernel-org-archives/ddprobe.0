Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E3647258A
	for <ddprobe@lists.linux.dev>; Sun, 20 Mar 2022 19:31:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647804685;
	h=To:Subject:From:Message-Id:Date;
	bh=bAIlUq3h3mqUSV5zbqtNAujm1+7IAw0nih6aA60/95E=;
	b=gCj3G0Azi6p4+PoGou/dqYHZLBsnOb1poWsGb0Ds0CHjExtWxG8N2z9r/SUQQdIL
	MqIkGBwOnFxp3zEV3wdM7WtXUVyWdu+r2C5W/jWIuXN4xR4BX8UkklPCI3NdoasrBPR
	Tv3h+Maz/SfI7VyUerHDVhws8Fqlk7DgkucNKPSA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647804685;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=bAIlUq3h3mqUSV5zbqtNAujm1+7IAw0nih6aA60/95E=;
	b=DCdu87dZM71KURZBgkolwMDhairqE7CFzuV8HcV8h+f0vmrtE5EapGFTqVgheedL
	yZJw+GqK+MDPxkhgw2OGuSDFZcx8n7c+HAwea76s55Ye2Y8UJzEqOCh+fcuQLvlfSMi
	2xRr6nKVI8b6Jtfr1eDXSuD4ywGoOhCsO5GL3eOo=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fa8d01a2b-c690ee58-5efd-48db-b31d-6c21e9fa4d26-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: f6c354304d5a06bb4613ae27b87aa5aa00f25fff2641d90949798743ab11106c
Date: Sun, 20 Mar 2022 19:31:25 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.20-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647804684
