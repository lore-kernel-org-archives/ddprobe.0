Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5C2524292
	for <ddprobe@lists.linux.dev>; Thu, 17 Mar 2022 11:41:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647517284;
	h=To:Subject:From:Message-Id:Date;
	bh=jmHsUtSEr5Es3XmKhlVo+7icPEUgJF2gBQbXvN73Cuw=;
	b=UMT3FreC/eD2ACLMeVK+qpk0U99jpGXUS8swgEm3SV2EOs5kbrIRpfYd7pQ5n/uc
	LVmBvhGKlAuGRQNhlBg2N63LXfVbQWZ2egblWx/alXUi1DzJn0PST+IMS4zYVsfUGMx
	u72NYYbcMWODwMX4REyXJu8LBX/N2CdOzB2m/Q8A=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647517284;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=jmHsUtSEr5Es3XmKhlVo+7icPEUgJF2gBQbXvN73Cuw=;
	b=juvUC0KzpPCix4yBbSrCc3UnHyW3iblvn//y/Y8h2omAwi7oywkyLg38tQRRHHxq
	DB9OBkiDzGjLvbwHedyHNYbG38yKm6whhv5026/xK2LijtIs0URc/zuF5qtJMDpWA0Q
	3WX6mSV4q3atxDEOgSUezv0Va0EyQrhGlTh49Tio=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f97aeb96e-c5f5d9b6-b98a-4812-842a-a5dd0a5cfae0-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 089c813dd8073fdd26f6833f7f992ece985d99d953ba75caae24ee4f6bf22ec2
Date: Thu, 17 Mar 2022 11:41:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.17-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647517284
