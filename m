Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 498DA1399
	for <ddprobe@lists.linux.dev>; Thu, 28 Jul 2022 13:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659013852;
	h=To:Subject:From:Message-Id:Date;
	bh=iVdig6q6EtrB+fSxZDzz+MfdPIeOBfw/0LQwR2O3EbA=;
	b=AlwZh77VSOnkAdigAH3Y8ADa/9fvu2TPic67OLziGfbGdZl2T1hr6iPevA4gOYcK
	vbi657PwEjZ5VF1oHwvdlJXPBb8f64eCB6mhKre318DrUEFXoaTIO8lodxoIzqZe3A6
	rU7SBVaTCBn36SGy9Cx+/sTTIarPP88YBis9wxoQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659013852;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=iVdig6q6EtrB+fSxZDzz+MfdPIeOBfw/0LQwR2O3EbA=;
	b=E1yMSclp3Basx53OQ+nNRoS6ZEVPNGfkZ+G1eeT+rJ2Jqp4LlK0Dhdu5pvFAxT4U
	XAUOBKVnE1qlGJh/8Qp04REsliZYZDqMuvFWnNifo1Alprmf80lWMUWAm52Ly5LarL1
	ogS1Z7Kx1Nzd1h7/7wNXmWiKs/eS/zCNiuaggB+o=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018244ee6d7b-19a971b4-6fd5-4337-b76e-d0ac5dea5dd5-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 648f1504e107edbbb0d80804558ee7af10caa63a06f4ac3c7786eced9231b9e0
Date: Thu, 28 Jul 2022 13:10:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.28-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659013852
