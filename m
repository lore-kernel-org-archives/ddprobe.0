Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6B2BE181
	for <ddprobe@lists.linux.dev>; Fri, 12 Aug 2022 06:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660285852;
	h=To:Subject:From:Message-Id:Date;
	bh=njilLekIXPfy7ZU486w6q73jP/FN9asPOn8oy9oJlQs=;
	b=ZFr4g5aU97jNfPvBUJHJukzARqOXiDe6nI1NCqOOkIi/IJpF134QFE/g84SuxRdz
	a4vR7imsaGH9xMw2o8jpL2VrVQkax2bUrGbvN/4AZ7ME0qKW6eAMe42dt/YdG1W+0IQ
	c/zSvzh2cWek1rc0kfRY/ao3ISLF4q9LdjdW8wDE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660285852;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=njilLekIXPfy7ZU486w6q73jP/FN9asPOn8oy9oJlQs=;
	b=D2DHdsgCm9i8ROwPsfip5h2Il74Z/zExINJFqg6ldaylCNInVcFfBfeHwS1sJdhC
	6LjsrltmzRmMNM5HhLGW6/icwn4pNo7Sns7fIp+zVUnAPeaipDnjnKnNvpFt5NIvcqp
	2Ecvjp4iH0MZw0OXWbWB+e6J0avfiJVuQPHkWJes=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018290bf9b79-1b2f6e81-c5e8-4da6-a641-6eaff1a7a950-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 02c167bf662eadce3c74793dfa3fecbe86c6854bf7a16a9d2d2ee9ea54f9ab58
Date: Fri, 12 Aug 2022 06:30:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.12-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660285852
