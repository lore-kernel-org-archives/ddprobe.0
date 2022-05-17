Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ED9BD10E8
	for <ddprobe@lists.linux.dev>; Tue, 17 May 2022 09:10:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1652778659;
	h=To:Subject:From:Message-Id:Date;
	bh=je9/e6zQ9sUcrhw22wMrhkJ1mKgQxp7Tw+b14o3sFbo=;
	b=eimKMhEc8SUcF8Ex2sC7htimRIjrNgWGyqaPrbPB/QVfLXAz1mZSWdqs+TzJwglH
	Yd0stcKJyN+oPgb9XNM65nQEWOFRa/le+L+TtdMqhgUh6ntntkAwVITwCYXflZIe8zx
	Jbuu2mjwJ+0U3HVMQ6dvqEfQM4jz10XKHfj7ZeyQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652778659;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=je9/e6zQ9sUcrhw22wMrhkJ1mKgQxp7Tw+b14o3sFbo=;
	b=S9Sxe9Dt0IQC9Ukh66eb187RXc1Qteyd5upC4vSJgD4I9/uIcSgOHuYcXoFeXBTT
	Et0UT6XfzQHU924WuRvy6OPXq/c1NKUOPg47yk8ySV1lor81EXhbIDhqPkEXRBstC1P
	0DTOEjMKpZ9xNtQC1wyyt8KvaYv5qLzGd93jkk3c=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180d148ede8-b05cbf52-5e37-4ce6-86ac-9bdc0b7cb2c2-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 1b87c364d51046a9acd497d462aabaa2ca8e4655a527a43be5bd9c4f0984dcdf
Date: Tue, 17 May 2022 09:10:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.17-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652778659
