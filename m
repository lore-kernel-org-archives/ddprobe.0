Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5AD2C163
	for <ddprobe@lists.linux.dev>; Sat, 19 Mar 2022 15:01:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647702084;
	h=To:Subject:From:Message-Id:Date;
	bh=oSv1Ru+OTBM3xg28LvZCV4iKfxtnLIppVy9L5BayLiY=;
	b=QQNESnKKqEVACxfkvp/FJ9aklBdSPj2ojDKST8wj1dd5LLfcComYW1uVYsSQbR7g
	oCmU7sv51mB4fXqeUcjCx8c3NRLk13H0V4Lz4JSAT2VWw1KmXCDvvEzCO0hOwHBmNXV
	grXR++4IrtzlQ8JCBOQzWDfAW6EcceYj/yQasT7g=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647702084;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=oSv1Ru+OTBM3xg28LvZCV4iKfxtnLIppVy9L5BayLiY=;
	b=IgI+lQj7LzfE9kJPuh7j3GSu+m+0WFjGvJSF9enMcT5mzqg6ydl0AZ6/2DV8IIfi
	bTtUS1BiR6SWKKfMihj0pKgG/LATL1n9Z3bPbTsDrx6kV4DkpFF/U9DuipB8Dh1RX+S
	N91IyES5Zk+1ToCK7bhpFwE9OlJi5/bIyj3qXdDE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fa2b28c95-9c884c1a-e891-4a09-9793-6f492c7c4bdd-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 2a2b8d345c28ae4cd0b41e5e222decce732a073722a479e72b814766636d3a5d
Date: Sat, 19 Mar 2022 15:01:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.19-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647702084
