Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 183732F3D
	for <ddprobe@lists.linux.dev>; Sun, 26 Jun 2022 15:36:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656257812;
	h=To:Subject:From:Message-Id:Date;
	bh=PCC3MAhDrN72QboPcvZZHJB3H/eupQC3XfU+Cn4u4r0=;
	b=Ley0X2TMUR14NpAScV9aKG/2vwVLdCjKuyPHpc3ZNuBMEnkPiydrws7BBFEeaWfS
	wVzF3qtU855Tpxm/FEr19lmcM6VsUxFjfJefM3tJLDgN/R7wIXRzm4CN2RBre3FQtkV
	OB/5d4knxplyKOt3RLRcyHLq/jzU63+rWCpGFEiU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656257812;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=PCC3MAhDrN72QboPcvZZHJB3H/eupQC3XfU+Cn4u4r0=;
	b=gr6CAYCTfa1kdRq0BGApmQZiuomli8GY+/W66hHde9y0TnXCYvn2W/j7TEfpIahy
	JwIgQXSwpeOs3pr+Ga8nIy/p7PbrPUQlvDAKi7XVMRN8crvfHy9ol8634my120At8g8
	0ridhf5vvCV9wERUEPi85TwGqjQu5Vee0RoDWx2c=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181a0a89758-3e31ef45-04dd-482e-a95b-3df05c48e654-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: cfffc7bebe0ded3f91112940d45eb19d719c971ab17f857c97d10f464bf99c39
Date: Sun, 26 Jun 2022 15:36:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.26-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656257812
