Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 096ED7A
	for <ddprobe@lists.linux.dev>; Wed, 20 Apr 2022 22:00:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650492058;
	h=To:Subject:From:Message-Id:Date;
	bh=Bwim+xMCrSxQVpsgamLdY4K38ggTQOFr7ncdTsNi+oY=;
	b=Zie4WEcd4jTbFg7ENfSO7sWfitwPL8pb2zp3CxRum2bdIpWsky8He7y6078c4Y7I
	DRkfqsvj2Es7skf7ZVaqc7dC6GjWD4eCvbscBLacqWYPdQsSyJyfU4pGgTHandevo2F
	D7olDd5oWXJEQlLdhA2Wft1sXZv/66+u6Q7WAerM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650492058;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Bwim+xMCrSxQVpsgamLdY4K38ggTQOFr7ncdTsNi+oY=;
	b=MuMnGKC74Bzm5VInijmjq0040ZXVQcvf1Tgh86S6Wk3JLFnGjpWdyDMWFbTPnxGX
	ItUGZtqdQVxASqs1e8ZaS3NiXE0BvNSkzIaZr3zSv6qlTG0T2VQOlOmI+fw00dhuk8r
	mMdqAmgWUnpShRca851WXfdCyHVz4AQCrOThBi1I=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018048fe2aae-82a791d3-6c32-4e7b-9032-6ddb45279bb9-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 45b026693e916cccf9915ac7b2d858ae989b99b5a5285b94ba3300a93ad8f9b3
Date: Wed, 20 Apr 2022 22:00:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.20-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650492058
