Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F8677A
	for <ddprobe@lists.linux.dev>; Fri,  8 Jul 2022 18:56:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657306612;
	h=To:Subject:From:Message-Id:Date;
	bh=gKXJlhQTopqB++DOeqEhqR9iikXbpeWszYeZNedyKZc=;
	b=P7Tx7jxreMxTa8hxNoXhDEp27rUTaNE3yc36IlQLfYXh9MBsHmqNNckb7SnquRTB
	Lu40lgT/Gn1KjaI8BvTyHLiXoPaK4ujqE+6mWFZvzHUrEH0PTb3sQuzpr9B+SzKMb0H
	cO7SQyD3Lui1KIXwl62jGRaamtSJg77iUl4pgNYo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657306612;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=gKXJlhQTopqB++DOeqEhqR9iikXbpeWszYeZNedyKZc=;
	b=NfjbX6goBoKpLyvCr7oZWU5Qfh6SD9LQiXOPopotUKdtUGFpr0HYsFiQJSlmbvun
	BMqO+43W4bjWZNLtYL1/VzKdFfjpoUj+ge9AogzYGgdvo6VBP7X25tiofRb2JFqa4yA
	wGujbTkQYEXa0Rj6b1nVTO4hIQtOj0w6RiGeDBdQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181df2c0250-00b9f77f-3975-442c-a527-d6cb3617fbc2-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 4588d6d917e44bcfb80397c46ce050dc1815e8c53aa41d20cbc9249d581580cf
Date: Fri, 8 Jul 2022 18:56:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.08-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657306612
