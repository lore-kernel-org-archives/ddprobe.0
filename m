Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 018233D68
	for <ddprobe@lists.linux.dev>; Fri, 15 Jul 2022 16:06:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657901212;
	h=To:Subject:From:Message-Id:Date;
	bh=4KPTBYyZn2w0d5cc9YWh/HlKQjW0+17yRLtPsJa67GY=;
	b=cQ6p2G7j3DVUEYaUzTVYgbq5BEP6AWgTZWHCPVUcByWfdjqlDyapwLC6KTbzN45M
	It0LDCaFHcKZ0MX41SzHpuyqyM8q6B77YKl9EbVBQTATWRTOBulAuO/FyrOfazn4T1D
	NnoYTsAbxOo5zs1Yxs6mQxIoeRhFSemvHLMhjv+w=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657901212;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=4KPTBYyZn2w0d5cc9YWh/HlKQjW0+17yRLtPsJa67GY=;
	b=LZrM9Icnz+FPr7I+ECZAPNDrF43TquFG5RlGay6TkhymTvO7If5VzOpHWGFkf1vp
	y5pUWUoyncBZ4qZ3EqcXzS0koEDRD/VzLhXlH7rUU45TJpiF1GcH/3LEy8BSMMQSsBv
	IPly/UA9Vqw/E6rbP5czHUdEIUTwAExwdsQKsPe4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182029ce274-0faba38d-bf93-43e0-a813-6b8be3f6beae-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: e048744854129c975d082ccfc95ac5b507684b0215a2eb696d2aa9d0932ccaf5
Date: Fri, 15 Jul 2022 16:06:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.15-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657901212
