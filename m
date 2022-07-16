Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 19D6A638
	for <ddprobe@lists.linux.dev>; Sat, 16 Jul 2022 11:46:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657972012;
	h=To:Subject:From:Message-Id:Date;
	bh=4jBf9nldSoNgMaMS8TBv/jtuZEfgrJAIHoQO9C4Xksk=;
	b=Skf9IhsFa+GrFS+OapbkSIAexXBW7yGAWKl3zMMestBX5pIfXMmGP4NCtCQGW0Cl
	yO5xhzMy8mZ0XE6HOd91Pc3yX4iM2fJdCXcY7hxYIE887lQMHBvkuXuJ9mnBLMMp/g6
	vR0IiMXMF7O4VcgAAJBabFq4DAm0lS1xiORfHn2E=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657972012;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=4jBf9nldSoNgMaMS8TBv/jtuZEfgrJAIHoQO9C4Xksk=;
	b=BsCnAydMRtl1OF5bzQ+VXxRe16ARwnTdv4Mys/UsLPF33SotFvpI+47Oh8zGbC3Y
	5rebGEAl2+Xt4iIlzv3MwSwUCHIySHSe1aEXG+299skknKp1GVsa+IfV2WPtf91PXMB
	hRDsYEMaYnpg5n9xP/0wXbvwP6f86TqO7r8QJLHE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018206d53517-0e7eea97-ccbe-4f81-b863-2cd8386b524d-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ad078abfde0990e8b699305b1b7404c25f979ac8e81c0ed3af4ada87f8765bff
Date: Sat, 16 Jul 2022 11:46:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.16-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657972012
