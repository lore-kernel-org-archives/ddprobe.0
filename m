Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 311741844
	for <ddprobe@lists.linux.dev>; Sat, 16 Jul 2022 20:06:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658002012;
	h=To:Subject:From:Message-Id:Date;
	bh=x6poJ3cwNKBLZPcJ1BvHdQL/hoRxD4afqp7xr4K/0qI=;
	b=JRuDRc5APHAocAfnUBqBgZcM48Sgiq670n32K29ugFYqcbfcP0suK2+yBmDddm+9
	iUuKcS8VjGCJoI/yN/3faC7qpt14gZchCvaWwzPAmWCkGb8idvV1sqYORrO5kKcqzA1
	c3TkZHzodlP3/0V5ygc3RH3YdLSKiyZYQhChpXL4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658002012;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=x6poJ3cwNKBLZPcJ1BvHdQL/hoRxD4afqp7xr4K/0qI=;
	b=bIrp6Wd5AafZDQ94Cw4HnCJfasxiESwXeMyuqOXjxu98Zo7kVjNfb28P5gqd/hl4
	2i32kGCTGu2whSRyuZLEgSMP53t/MR3bnMTo35l66yJlOAjjV3r50VHqIIUdXxdfSTf
	bBWQXVT0GvK24wMZujoxBAcbyV5rpkh+3kITF0HE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182089ef8c6-98071b9c-12a3-465d-944d-fb7e2f3d5430-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: f31f971805c5f210b1af19e82044298291db7d0e37988de700f396b64720c283
Date: Sat, 16 Jul 2022 20:06:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.16-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658002012
