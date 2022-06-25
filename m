Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E92A17C
	for <ddprobe@lists.linux.dev>; Sat, 25 Jun 2022 06:16:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656137812;
	h=To:Subject:From:Message-Id:Date;
	bh=8O4RENyYwBD6B+o0I+vcVOBQy5DuOVgq0cbc6OHkFYs=;
	b=CLknnd80kIgO0KfjGvBFSZz2/cuypkrcH0XsZXPRujpPMjQWTmsVMadPy6vIAL9p
	ZbFlJGyDcT/s7nUx4eDKYYsgGKxd5zOj2vQrU+aJS6ikoWV65MLRhCRJDBOJdxcRmMJ
	Kz1Wbfi8uY30D4ciIokKunf0Sio5tWq+EvJu6qC0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656137812;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=8O4RENyYwBD6B+o0I+vcVOBQy5DuOVgq0cbc6OHkFYs=;
	b=GxUFMN4ABKOXXyhg8UWIxasYDa18nxYK4plP4kg5G6MzBlFJWr1c8dxHg4AhKZ4+
	oqiEs8dmFRcLVB3zll/Gy7LmLSJI4rZvlX0mx4dm2PjMYckGEGATh+2yIKaKCzIrRUK
	lH9a3EJP7BjJrgsQPzMpznZ0ioxCW5orSsc311gs=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018199818932-9b2d6888-eeba-407b-bc2e-245d634c6692-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 98715ba29f4a4de7c659f5df08fee84f2460694a38bc99730ca7a2e6039b7d20
Date: Sat, 25 Jun 2022 06:16:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.25-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656137812
