Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 15AF72568
	for <ddprobe@lists.linux.dev>; Thu,  5 May 2022 16:26:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651768018;
	h=To:Subject:From:Message-Id:Date;
	bh=XsV/9o6CcW/FZrpR9fUThqSruiW8EXW+4Wi0vsZ8ygw=;
	b=T2YDu9B1ormvThIJA7ywSnSKvZDoieoQDZ4IPRVtaI8IPhaGKAoPQp4v2r1kSlAt
	9k6DAnqyXeO6oavFyOXDNAgC598jwZsz5lRa2evCK4xEdN4S5iMPUwFUc8j58NrrcjZ
	yyP0e1SnTrtGl3WEmX6LW+eMUsBwv2ICZHVkZ1q8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651768018;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=XsV/9o6CcW/FZrpR9fUThqSruiW8EXW+4Wi0vsZ8ygw=;
	b=iIsZTaRzjZAtm10XqVl6+kJoZxyxgmQTZUNitZyYlHQEsQE6ePRe9Nb9I5MqSLd/
	MoBhQlRHglqdbmY5igJvTpdl1yQR7W3OzpEpURQWHbyFRpqaKPb2lH35BXQxx1ZvfNq
	EIYJ7Yt9SDawku8vIZS+acH8gfJOfKl1hXl1BwKU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180950bc57a-b11f5841-57d3-4922-a103-a16cd46066fe-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b2aaf3b72377c6eb3c5cc7322486c168f3a398d06016bf4a126d269b20ecde39
Date: Thu, 5 May 2022 16:26:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.05-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651768018
