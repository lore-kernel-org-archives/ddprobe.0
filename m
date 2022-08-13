Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D5437257D
	for <ddprobe@lists.linux.dev>; Sat, 13 Aug 2022 19:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660417253;
	h=To:Subject:From:Message-Id:Date;
	bh=i6ca4hEECkjuC2QG2xCjYZjlvzUqAw1wkohIMcK2z18=;
	b=CyA2kfduaK6m7olaCX5JQEm1Z7SSUfLctsyWDSI6e8aiUQHVTH3onbxwVGoewGH+
	fKkyFovDSMxrrMLgM9vL4C5a3sdY1z8nXjCt0Tb5V7oVd2p03+B1GbQO7MP3oDGFyT5
	4qldCyQwjsA6SHiDAinLZmtW/w1JE2I6rR5nNmbU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660417253;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=i6ca4hEECkjuC2QG2xCjYZjlvzUqAw1wkohIMcK2z18=;
	b=kihuCgaiGDd3wALfkkaXDCh1/9i/CktZHxqlY166Fl8jG6/NnEJz7HyW8r7xIal4
	oHTFPIpppSCIZzvUJGFfBih0uvbBtRzcspRUahdWTTVPLQpAXUEtFhrXhcCubRqFC5l
	NcgTPMZWC5MaKDvwavfJAcmasjqCU2jX+MRtLm0A=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018298949d19-defbec51-311b-4a95-a632-5a6a80b33ccc-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 57a15c0985c1fdec2cd6ba47fa20ffa98fabf678f14885d8544c8d224a19c61f
Date: Sat, 13 Aug 2022 19:00:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.13-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660417252
