Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2173746A7
	for <ddprobe@lists.linux.dev>; Wed, 18 May 2022 07:27:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1652858819;
	h=To:Subject:From:Message-Id:Date;
	bh=f3SZ1qBC24Z5tYb3BhVj0zCzwwptH+AYSGlBAx035Us=;
	b=JCqwNo86XOiD9vDk4N/Y3A02HiRzAKhNJi2mT8WjG03yoU8MBtAlFmXW3X6aCbZM
	ysC67OF93ZaZFQ9JgPpb+xbj3HvFRIOUClKJWlvCYben2S998cCnWleYW0pDWojZ4QA
	Pfz//51kY2NzF7TjPKscXsLtVrVvKe1yJO6hgYS4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652858819;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=f3SZ1qBC24Z5tYb3BhVj0zCzwwptH+AYSGlBAx035Us=;
	b=OOIzTiOkV7tRYCmMvQjzpRdKcyxvxymk++bNq9hcrg0FNvm4eish0ghxu5cLxGR/
	njmhLHpWlNERw6lREcETTxMoHSBfNmjR9eY//Vaf2qkDg5Cc0GcDiFLRR/3XbH65iOS
	lq7Dl/F14L0jAvbQbwEiAxMAxHw/z8J8TKn/s//4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180d610130a-2baf1f68-6e9b-4c9a-9461-1b38d88b9a0c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a9bdc7a606dd88ba5c9c70cff825369d417013657be1b60b181e5e6e5b9779df
Date: Wed, 18 May 2022 07:26:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.18-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652858819
