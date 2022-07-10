Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E397E7A
	for <ddprobe@lists.linux.dev>; Sun, 10 Jul 2022 19:06:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657480012;
	h=To:Subject:From:Message-Id:Date;
	bh=LIucfx6Wn2bIB+Xx6lgx7cGIjZoCS+KvpIbd2u6zrz4=;
	b=VXRMJdhz0GTHfgckQBU0oNdZlD3ygIZg0o7tN9qL+z4kef296a6qbXH60RED97uR
	q/tKK1++ThZc/2c815kIiqdcFBip0oWo1yX4OQW/d7nLcU8fJMonJov6YETdbGwgscP
	PPlOJjTe1yhiJThOjtDqfK+nAUf/58YH17jm0FN4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657480012;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=LIucfx6Wn2bIB+Xx6lgx7cGIjZoCS+KvpIbd2u6zrz4=;
	b=ZIxu+o0otbHu0fAxmYUzOl77PwARznhc2qwPdQ/TpuczLeczMsXM1uWlv15rOZM/
	NXN9dV8PBngjEA+O0cK3cAo2ScCb5JKwKNWY2tkybnx1P8OheAw5NSM/BL+NN0xR30j
	WxDRX8KVbhRlp8VoTXrQTg/lh3ZaV8Slgsd12dtw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181e981e200-f4c65bd4-659d-4688-bda6-71caafb389bc-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: d0d64f9d14d1f67eb2de869ca8b5ebe6f89903ad8c6f55abfdda403702df9b8c
Date: Sun, 10 Jul 2022 19:06:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.10-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657480012
