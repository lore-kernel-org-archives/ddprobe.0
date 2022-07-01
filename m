Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 287496D24
	for <ddprobe@lists.linux.dev>; Fri,  1 Jul 2022 18:26:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656700012;
	h=To:Subject:From:Message-Id:Date;
	bh=cnaYje9hmDld0qzjx1D+Y+mHLTROiusEtdxaVP/uHS8=;
	b=Gtf1adP33pHgdbS3jG1h44j9fZXeNVKh3Bru+aZbO0zBXC/dilANpZZC7Lv/+DO8
	WOluyHILgL1/OJF+u5o+xP30nzTj5dQkkDFmZ6WjQAKJqak75YdwmfoxJUYHLlMjE4Q
	GG+42N42XEHYLEDGAamkYs/JlNO8wAP5CfZlXE0Y=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656700012;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=cnaYje9hmDld0qzjx1D+Y+mHLTROiusEtdxaVP/uHS8=;
	b=ReIrbQfXi+fSJN/IU9YkcILlFKekPkYJ0anUy/656eRLwd2jDV2y1OKJxC33ILtj
	loBJMbJIvZMNkn+SoD591SJFXp9EtEvvvNrHMQR3Jpe9ss2ereCeJ2Q3K25W3hDeM8Y
	6wCFFg/CKZTsA9OH6n7eIIv44XO6zIb3YrKdL80I=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181bb0406d5-314b4fe6-cef1-466b-a556-5132d23496a8-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 020db19d86443ffd2a7237a1cb9b8949597ec43db731b0d0b3e0182fb34a6ce3
Date: Fri, 1 Jul 2022 18:26:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.01-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656700012
