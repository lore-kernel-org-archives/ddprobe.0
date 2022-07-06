Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1CE84258B
	for <ddprobe@lists.linux.dev>; Wed,  6 Jul 2022 16:56:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657126612;
	h=To:Subject:From:Message-Id:Date;
	bh=1aG2i2TeE6vbouhVyxOjwCoLMF/YoJNQWNCJclESN90=;
	b=btuBzQpZ8A6Zdlc7IXxOLWyFcuQ/y+Wy3nh75JChG3Q1ce/lmfVn8iDpKqszJeZZ
	79CbxHR02mL3Pm48zjV5Exzv0Yxtp5CpBGzTUspL2rtPDusgmOXR1j3OYKrqSCqQFKj
	/atU2+5d87IJFSIspQJg7oLHQguLC112jj6HhzJI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657126612;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=1aG2i2TeE6vbouhVyxOjwCoLMF/YoJNQWNCJclESN90=;
	b=etQWhGG/9QfMNixSLLkQbNz5+HkSsGaTmHx9NTT2EDh9Qg+exzfGE2cIclrLGuFM
	ySlT2JZIqp3ObQNTJRZzKqaagL8aEU2dgUARPhKy+G1Exg9l67gICSjo7cXXzWrVRjM
	97bgkWA5dvgBzAzI5lNoNveDQ5iyWB/3EpSsjAVM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181d4716d3e-47707d9b-11f3-465c-a1ed-936f4c28e5f7-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: fc512e627dd963c144f3053265c0dcb40626423779f23f43470be35aa2987156
Date: Wed, 6 Jul 2022 16:56:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.06-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657126612
