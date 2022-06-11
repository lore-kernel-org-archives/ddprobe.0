Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 016DE7F3
	for <ddprobe@lists.linux.dev>; Sat, 11 Jun 2022 09:22:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654939379;
	h=To:Subject:From:Message-Id:Date;
	bh=Y4DcrdZextarKgtkMQraF6JWgwgoBGW2D19beLX7s2U=;
	b=aFaUPlbsfYZ4aN+jdYBzeiMyFdh3XfqWM8MP92fdZDIKu1KimaHhi5aLq9a+QXE2
	17IoOJF1DOEYK8uPQxvhqTlpyFZTf0aJmekGq0Z+vKinewxY3OkptKWJ7TqxdpuPG/7
	K8qab8JE8Z1xwfLlKE52xJrzE8kM4ncMTYkOMgOc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654939379;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Y4DcrdZextarKgtkMQraF6JWgwgoBGW2D19beLX7s2U=;
	b=djnP01WZTex8Kwo/LWWqHbKDxOVK8gp9NwzmovXLaPHO4IkWTxy72dMUN5p/pdw9
	eZpgIBvcGH3VoOpN92aj65MtVFWGFZ8B34NYM4inT1zoutbBUiFQH2QIQNDSUJ01Uo4
	h7om72EOlUECQp1M8/CcuepLOr1pCEI2S4Okh99Y=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101815212e64b-0c6a9760-7fa1-438f-8379-7f47bbb76fb0-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: d1dbb41147b4cf5e3031c37a136092e29b05e2543a468f3d94fe8644a7d2bd5d
Date: Sat, 11 Jun 2022 09:22:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.11-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654939379
