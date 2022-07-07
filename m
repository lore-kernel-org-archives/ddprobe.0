Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F32D1362
	for <ddprobe@lists.linux.dev>; Thu,  7 Jul 2022 06:46:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657176412;
	h=To:Subject:From:Message-Id:Date;
	bh=XsJ+sWUlufBHSNqgGY8rSRy7kc99vP1yKq2LmF+lMWE=;
	b=Pu8QNfrw08Iwac/+E0sc71lU6GEOGBMp/aCYhYaKMAtEbAv4G45dlKTg8STV8/yb
	nJWwDZOWGXhYWkjfO7wQ4/D9nIClB5XkyErb4PcSLD1VjM8bCPcw/EdhF1EeR+qjdvF
	yBdj3jcpoRENOwVGb7M/PhnBdZsJfomojI+NRN7A=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657176412;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=XsJ+sWUlufBHSNqgGY8rSRy7kc99vP1yKq2LmF+lMWE=;
	b=hU4nTOqDgGWe1sRT+PLAJG4Ana0vmH9qsLGR5KUbzD2k4kOjTp2oCqkjOFcAiUIq
	GdvlrpVB4afkeZt53A3tPs2ozro7dS2O3kd/1Qem2JJOrBvU7M1tQXfI2E7S56pbVRg
	eEWYjta2rYhBmWdRPvRlvBXratbYsOVbRWCxmQ/o=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181d7695067-8f6c1666-2561-421b-bfcf-c54a9435ec67-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 1f1db622c796ca167bad4d9d6f5be7c6ba60200a903078437c44de2c8066a31f
Date: Thu, 7 Jul 2022 06:46:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.07-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657176412
