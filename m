Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 62760538E
	for <ddprobe@lists.linux.dev>; Tue, 26 Jul 2022 18:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658859652;
	h=To:Subject:From:Message-Id:Date;
	bh=jovipjcPDCQaM8DHzA5EO18YzibVE2IfXOPeXm2+uiw=;
	b=IKQamLxYjVviDkCUfr1G6ng3VHWRMw22Z8NPINVcqBSozRDNoUfOELH2hyappyri
	aQr9sNlE+UBZ86ys5eZhqLftKdW6f3llLEvevxVpQuelHELhpwsOUFHLGiCCDdooFP7
	sOi+lNXX4RA93HQFJNM3qXqSLwlzdXEqTrXeBhZ8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658859652;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=jovipjcPDCQaM8DHzA5EO18YzibVE2IfXOPeXm2+uiw=;
	b=aY9+ej0Egiwa7OOBvBBtED+lcrpqla1TNVW8BUmRlpb3M2e1ZYskhLmC2UTzwN/V
	g+pmMcC5cPWOaHT/vFBt08rKrMoem1CjcgA2I53D4M6YnjdsoWGtOu1gMVh15RUx9f+
	f0dXf4e9XD8SH6GVFivD8sAdPHupik8g1V7YGBPs=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101823bbd8605-c6037d5a-47c8-4c1b-8e7c-aaf5053f3df9-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 0e478fd4fba6e8bc0fbcabc7e7041bb8beed768df475532696e0d57a4ed86b66
Date: Tue, 26 Jul 2022 18:20:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.26-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658859652
