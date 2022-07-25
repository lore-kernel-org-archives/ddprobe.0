Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 068BC371
	for <ddprobe@lists.linux.dev>; Mon, 25 Jul 2022 06:36:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658731012;
	h=To:Subject:From:Message-Id:Date;
	bh=EyQif9BB5geU7nJwmmMPNZk2ZWwKQ7aVDtK4gyHf4GY=;
	b=Yf/G0a/Xvcy/805Cz5A4vLABRaVz3mFjVZBqXLH+XWFVaSa5dStCr1nGSxAhvx0Y
	9ibK/DqN1bENXalTnbZ4vQesxk50oIKNJfYzjRHEzx8tFtBQmsOTC21K+dr0vRNTZlV
	riJOb+zgtyUYfQSyRU9h+UpUDCGqatHW7RHIaAtA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658731012;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=EyQif9BB5geU7nJwmmMPNZk2ZWwKQ7aVDtK4gyHf4GY=;
	b=ZxgYx4NDY7Au+ca6EHsP+HJdx5XIRZKeaygxttMMk/mKN2Cl3QCNmZOzbBiQufWN
	wXk+LbXgtL/7AhfQPr8CoVdfgoeWi6L/9Lbhwe7qMSMTUxZ1R7omREcH4lo/PJPMErp
	ooXjonUKZNOgrsGavcDlt7yAVj0DH/jJnzMWZDzs=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101823412a0af-45deb6d9-1cc0-45d7-880b-e4bf4335395b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 6310d44df6a35e693738322b3d1ad86a92d3853330ede03c2eace824b7668b2b
Date: Mon, 25 Jul 2022 06:36:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.25-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658731012
