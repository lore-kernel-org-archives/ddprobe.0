Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A55A10E8
	for <ddprobe@lists.linux.dev>; Tue, 17 May 2022 09:00:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1652778059;
	h=To:Subject:From:Message-Id:Date;
	bh=dLFjhKLKD2xGOGfQfo7eAMHv//l59LsjEcWNymm2Wag=;
	b=br1wmZYHcF6qNiokrq7WXO7glPl+wq/8fo9LSJ/8le306p2lGmxRvSLNH0kBCui8
	G6RrPp+zg4H5LKQJmz0n1ASQFqEHLtm+Sq0vnHm3KZhG1CdKLF0IcfRuyRBSA1rUEVe
	zBYLKkpDFQYIVMgBCxHmvVRJ88tUDkbKioHiqirU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652778059;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=dLFjhKLKD2xGOGfQfo7eAMHv//l59LsjEcWNymm2Wag=;
	b=aGHcqpZMviHc7Y33BBRdCANUODi04X6oG1JPHnIaM2Cf1vEWZOYwr1xvZCuoBJfB
	HZyPsdTugK9eEAUQ+LlrepnTN4t1EwAEg81oDUPn8K6JRt6ce5zcKrjjgReOQRl67KI
	jcHpeEbXlBaji/XFoJQiEJLGNiEd8XtXo65dngd4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180d13fc628-e6e923b0-a212-4ead-8b4c-a9c38ae52a2e-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 96a5cb6d2b4b1ccddc3c7206434c9f4664ac0a397a8d8d16ccfc036b8c19cee0
Date: Tue, 17 May 2022 09:00:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.17-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652778059
