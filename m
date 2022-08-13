Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7838C622
	for <ddprobe@lists.linux.dev>; Sat, 13 Aug 2022 01:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660353052;
	h=To:Subject:From:Message-Id:Date;
	bh=ZJcplwM5c2YKEhWkCyL+VPhBQaRA28HBDct4xutbFkI=;
	b=VGKp0xHmsx5LR3eNxTYlz4KkdxcqXKstnSkQc4CdVL9+d8NGgM4dU6BbZQHkVhXZ
	7F9oWyC5Sin7DYcJXzYPZdevp3HK2g97i9yUcY3b60bkSa0HknZKH9R3lv8WtR5juqL
	Yj0JKK2PLqRbqwvEZfVz+zHaMtomrtSLejhGUJcQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660353052;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=ZJcplwM5c2YKEhWkCyL+VPhBQaRA28HBDct4xutbFkI=;
	b=JZ9b/NZ5Unf1Bnw2i1Km3iCE+yR0OWLF3YUG7DiIhR3TyObtP4upK5quvM7nYBOR
	gZdUHoBsYKeNHG064EpCpVzSH+m+aJ6Ug8NwGtvbJHFnRH2gdTH9inj4+EYd7wZbxcU
	/fIcYLyqwLk/24eqpM26wVaPkFmwRGEtI2ivr4zE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018294c0ff91-0135f147-9d96-4b08-95b2-0b16d4783c44-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 09f489b23b0271788b4febd368401785c9a278c18527cb19af4d25ef50fd2dc1
Date: Sat, 13 Aug 2022 01:10:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.13-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660353052
