Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F0DFC1FAC
	for <ddprobe@lists.linux.dev>; Thu, 23 Jun 2022 22:56:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656025012;
	h=To:Subject:From:Message-Id:Date;
	bh=ScNmXd82eEOYXsi62/+z1J2mfDJFSmVOa6z/wmHdV9A=;
	b=lOA5dEi/td9MINaU3SCjwwX3ieWHKl/XoKGM1eRr7/yz/fdh/dBaPlefG+lbp0Hb
	gVBIsDRECQUdRulADoBm2BCJgCLb6xET6kNf9JTauQ+59Ky/KDmIsULrTJrJRQci5zk
	QOApDssUypuxGI44w1kWfDpvGs4gGpuVAYDy+0x4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656025012;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=ScNmXd82eEOYXsi62/+z1J2mfDJFSmVOa6z/wmHdV9A=;
	b=jXdf91QZK/05NmMVrvKw5+GAsBNud55LAxOBzw2f1JByudcvtN+AkJmNMdHGG2M4
	KOrO6wryzlwmpA4FdBWF0tPotKy22YrToTxcJQQaPTgEAT8TDskIb1gWcAkLi6wBaJl
	cfNa0ZWfl6FqYAYOINPd+M4Vw1J15AYBifAEMd2c=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018192c85867-7713291d-9921-40e2-839e-eec11eaabbba-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: d4ffb3625d97b72967f77bdd2cee1b9df3454f933b0dc66a890cbe12fa0d4b24
Date: Thu, 23 Jun 2022 22:56:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.23-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656025012
