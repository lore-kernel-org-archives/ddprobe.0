Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 507777C
	for <ddprobe@lists.linux.dev>; Fri,  5 Aug 2022 04:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659672652;
	h=To:Subject:From:Message-Id:Date;
	bh=djZ8IY7C0fGC/lmZW4hogMlKQCx8keNSnvHqgUrB/EE=;
	b=jLoEpoD77XTC6Ce5tacZxciSk1n2wppcG2sQKfzxQub0XxFsK+Ke5gOIL6qbvy7V
	XUxjm6oIg3CzzEm+BnJCxmgN8MaMxQ9LlMvmG8XGxEMGIy5NyNw31mPMkv3hXIcFRik
	H2oCmoSkSA15VfIpWimZWnqOuW4c+QvvoH+PP24k=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659672652;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=djZ8IY7C0fGC/lmZW4hogMlKQCx8keNSnvHqgUrB/EE=;
	b=RU00TvYXKqU9wB67tH3P4w24QUQ3tKAhP3aRT+ae4GMUkdjsSHQQM+H9EXiq8HRr
	SVQlKbcrNSyranR8So7xyDa/1QWWYx785Cm6RuMYHf88h9KOLSgKfSd+G3vv77QlHrr
	PG2tTtFRCYGsphz09ildy6dpECA5lABws/fW4bww=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101826c32eafd-7af0a1b8-2041-4b9f-b264-d4f43d287c57-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 12da4b4ea7fb88494432c49d847e799823affe8104b1a863056baf5e1e3df206
Date: Fri, 5 Aug 2022 04:10:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.05-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659672652
