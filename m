Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 97EF01FD3
	for <ddprobe@lists.linux.dev>; Thu, 17 Mar 2022 00:11:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647475884;
	h=To:Subject:From:Message-Id:Date;
	bh=PyvfVzfOBvpcanw84npYNuzrJ0CFmq0nHdfHJW0xqCc=;
	b=D6DjaxwdQJqK2NZH756EsaI0j1JZUcj1T2MNtKIOYzV5V77JAEoN6Id16wE7jU9q
	y29PhBxNGOYQO/P4wheU5Cd3V45CKRQHo6ZqB13gw97m6ZqNbMU4IT8qZN4CvM68WnL
	07G9obeMjqeuMqdVOU86Hh+DjN/F2ZNdEWguxNrw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647475884;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=PyvfVzfOBvpcanw84npYNuzrJ0CFmq0nHdfHJW0xqCc=;
	b=K2FQ7zSjbXT9S/P7AiO1dZh4OQ3AQG1GHiKmwlM9R8HivdX1VbHjeedqJKHxFnlO
	wYmAhwEF6i5Ae2l56XE5L6RDBg5x8xyWBrLhdsqsPqnb++sKgfRo6OEIuZlReyj8Zwa
	jirPzhtX3xsdV0ed1lviKmO7P5dKzgvLh9P2jNEM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f953702c9-aebaa1b3-0832-4151-8cf4-d3c8c9a0d501-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: cdf944156a9c0d8476ed49b26a8363767b485ca2abe110b09ae388887f2e847d
Date: Thu, 17 Mar 2022 00:11:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.17-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647475884
