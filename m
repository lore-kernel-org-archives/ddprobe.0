Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 06D2436B
	for <ddprobe@lists.linux.dev>; Sun, 17 Jul 2022 04:56:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658033812;
	h=To:Subject:From:Message-Id:Date;
	bh=8ZGHvSO6FpgkBm6v8Cu7M89j8h6fHpuEQ77JYXsmNoQ=;
	b=cpSApse68IT9ScHcC2+W+dc8ytS5mThkRjY6PVkBGknmDtxvRui9TBr1LYOd8kzo
	hlraeUCSIkb2AF8vCYxQXMNGTRng6POPmpUOHqIsj0kMwKsvlX6DN3dgLqXeSrEDFCN
	YP3pfBncF8pvol/Djc1erswNu8ISr9MN6zokbc6c=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658033812;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=8ZGHvSO6FpgkBm6v8Cu7M89j8h6fHpuEQ77JYXsmNoQ=;
	b=Ey0nOdn557Zk+Yr16RpwInmzTH1NrLQAAJicE+WDIq6p7qOVQCc7SGd5Y3ABYY4x
	CPu7qD7BYcE5ogZ6rn6Dpf8L/2sPfW76d1k6Qtue7x1VFBdunxgnyamNyBoI5qdSAPa
	wLeknBndo4TkbZTshZTOzrLAaMa1yEt0qbMwFXhQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101820a843358-9f0ad858-835b-4bb6-8596-622dcebec341-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: e57a031276d4a253c31dee3a139d727747253277a3305d38e7235d078acd5648
Date: Sun, 17 Jul 2022 04:56:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.17-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658033812
