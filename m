Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0BAFA7F
	for <ddprobe@lists.linux.dev>; Fri, 27 May 2022 18:25:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653675959;
	h=To:Subject:From:Message-Id:Date;
	bh=S0AlOD1IbD76TbhvrmdXha+tSZLDdkv6Im2jiXQ2Zns=;
	b=McmXbxaqZgv53lBqAs+uuj216xG/u/0qIVXjxjvx005D2zHmBmi8QWEuCkF/suUy
	MDu0A88CVU2uXyGJNOZ8AWnSoLaR8jeS7u6V5798JhM2LNenJ4jma+0+AjDb2aVaj3P
	pote/fm9qs4O2RRoPNZCzDoflYgtlB5bqmcYI0HA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653675959;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=S0AlOD1IbD76TbhvrmdXha+tSZLDdkv6Im2jiXQ2Zns=;
	b=IIDgNrNru1G6vvDOCqe7OJIh9CUeUpPsAZIaSkkthIhUpq5TTi47Lqn9tubCCgac
	133x0yfPOpdIvAHEgvXPu9Vc1JFXB2j9p7LufJRrMbLUZLPcrZQ4c3RksHGQ0OPEuJx
	bE+C7ySoFJVYaHfjF5sRcGOvGHcCPfQ3y5Ko080o=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018106c4a3d9-4872d358-7304-42a7-98ab-5a66318b872e-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 2d4f93002eb44f9b2697bb2e06e1fef7be055f3c4740afdbb0f810f3b3452a3b
Date: Fri, 27 May 2022 18:25:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.27-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653675959
