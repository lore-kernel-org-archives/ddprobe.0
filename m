Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F5D26D24
	for <ddprobe@lists.linux.dev>; Fri,  1 Jul 2022 17:26:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656696412;
	h=To:Subject:From:Message-Id:Date;
	bh=U6VlEy8oObLI1UglefO90wku8ML+psyZT+gWeyJDYS8=;
	b=DDs+iIlArt6fbuamM+FwauxVKmqoBpILcrlyv1H7FsPx7rzE5nRnFLY7yR0iTf9E
	8CWxbTZefBKC8XE9+/ybCQ4hKxpZVw8WvBhbNDlXb55P6Xla1kHo+clrsyYcQvPicVU
	+9wzNMxZMrYI8tjx/MTAULBops30koOa8lzXhO70=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656696412;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=U6VlEy8oObLI1UglefO90wku8ML+psyZT+gWeyJDYS8=;
	b=dACXmQcPI1LlPK+cixrJg5OeWnIb9EdMiTkNT0XDV+vljaUZhN+5lXsnFKQeN9zO
	ivshU6wY/Q6jzBBkjMv6OBTYfRUzO2XtR3gZFjQjWunZPIR4eMsuyz3fXaWxnRqyv0t
	2Uz1f+Ylq/XIsu+HvTPspWv1pCktegvf3Gy8j5kY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181bacd1890-ce59868f-3da9-428c-bc63-b722d3923c17-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: c5340ed64f5ffb2a3b5ef23d5d427c3a32a89d626723c33d06fc15f9d08deebb
Date: Fri, 1 Jul 2022 17:26:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.01-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656696412
