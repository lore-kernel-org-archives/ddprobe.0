Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8BB2F4C6C
	for <ddprobe@lists.linux.dev>; Mon, 22 Aug 2022 23:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1661209253;
	h=To:Subject:From:Message-Id:Date;
	bh=nrrJvaYlXk09gYvOzRXSi9FHk4lF3vpIPMjUU3Xead0=;
	b=VzYNPwGLar/Euv+o5SKxPNu45+K9HcX/LBo+Z/pXqKqdDKSDa3Xqmagk8nP1wbVu
	267NbXXOXyeK94X+XYFkvD3fxijiFnZrW175p9zJoMY1t7kxFJYWiPa5JOOo0N3pkzN
	QHTmvi3KsDlbEYY86ebsqRYOxwUjE1rVu15jFYG0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1661209253;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=nrrJvaYlXk09gYvOzRXSi9FHk4lF3vpIPMjUU3Xead0=;
	b=C1M1X1RZUZSzBFsd1mAYc++9MCdnWmOyhSeSysr4upXWHb1sWfF/IXZBZmh9jt9f
	adKcrPy+KBmYZIiAVqHqTRqCn8EI9sZh5UNJQcsudPliMPyxhaS7gbQ6lDZZlpowxd7
	v1jXnWJCoML9hLz6GDfZ5m59kp4LIsCAyYk49o/o=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182c7c992fe-4c5654d3-e8ed-4ffc-bcb7-02755d80032b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 189af63a048671ba4b0ce4051986b463212abf0d5cc2a3c59702c58cc462a8b2
Date: Mon, 22 Aug 2022 23:00:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.22-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661209252
