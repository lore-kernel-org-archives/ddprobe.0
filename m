Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 44B377B
	for <ddprobe@lists.linux.dev>; Wed, 30 Mar 2022 16:10:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648656658;
	h=To:Subject:From:Message-Id:Date;
	bh=1Y0zlN5UQsd+ZgtYtsoEe5yCX3Tsl0d+jsFbrvCcJUc=;
	b=TQs+8Wq9XohWQ67R0ywaTe8ebFMPCck+wCk+hd6XdWINoUu24AnA1IEZY8D8pfjE
	p20eGt+zH/uPvwqGx6/bIWZYOo9d5rf3fwRYzF0IrQKRYdpXvVBsSpTQnALy6uWKkAB
	Lwg7pGCBCRQ+imtTU4iYQBB6tPTZEQuVuZUCIawQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648656658;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=1Y0zlN5UQsd+ZgtYtsoEe5yCX3Tsl0d+jsFbrvCcJUc=;
	b=KpQx5yh2iIZ6h7/XKy1kmLrZGZziHRyjL8zLiB8jEQlWxSJTXhc3sbQdUk/rcLqv
	3wQXiE7pGRZcL7i7AVkush0U3AloWK7qJvGbRuVGrJsxTvKQxEoGltYpdL1u4155Pxu
	0CJrJYehMHB4YHjAA+gMxcbWdErRJEShTRhnhB20=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fdb982f5f-30b6bd46-e0a3-49bf-a591-5064ef079ed8-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: bbe9f98ccbd144570b1e5e62d5e2e7585669ac71710dbbc3945eb2ec2b3a93bf
Date: Wed, 30 Mar 2022 16:10:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.30-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648656658
