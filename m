Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2AC4DEC5
	for <ddprobe@lists.linux.dev>; Thu, 30 Jun 2022 23:36:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656632212;
	h=To:Subject:From:Message-Id:Date;
	bh=7iZ0SlLfs3RxsfKQcZEHDlsGmpqj8zbRcheqUD4JBx8=;
	b=JzJEz5WEms006OBdVjj4en3+EK9JvuAVxTjqPOuy0h9SJ7jjlsRr21/eWksiY4yN
	gRWJCpmMnaatBzysF2uT+Z/pnLK9UecamFZ3mvDa92icdOwc03Li6Z0VwLYnMy1axk/
	rrZeyqlNh+k1/DvgQzpdHWhtHyT/Zy4A5ibRFkT0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656632212;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=7iZ0SlLfs3RxsfKQcZEHDlsGmpqj8zbRcheqUD4JBx8=;
	b=dY0WIMKu9QPdY2cshU8qu4DkkH65TFJVHSrWP22VHMNyqk9ZCT0b+b3zq8jsLsG6
	lOYhGyE6GausBvQsnSS2o5s+WrElmXNX2bb0NPwSENeHfKzhI4j1TYZgpjeWCBHVt+C
	RYYC9JOIw/6KRTI1XjZAIVo3J3di9f+ExPb4ksAA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181b6f97b44-e35c3d62-c80d-4fca-ab74-1630c5483b34-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 5fa6c821e68877605eca04014709a31301482bdf8d7a8c0e651ee4c918bac61f
Date: Thu, 30 Jun 2022 23:36:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.30-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656632212
