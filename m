Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 49CEA7C
	for <ddprobe@lists.linux.dev>; Mon, 28 Feb 2022 15:26:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646061984;
	h=To:Subject:From:Message-Id:Date;
	bh=JIL/ZZ4rwNkIMfRrEx54jAX9L1omcsUTINTtYJoe4LY=;
	b=CzTdz6SF9y5Bk4aBLNL3wK5QwZwr+/uJYil8HqAwirhsG0EkiPx8Y5F9vQiIqLE+
	fpKjCY0nqeKVSz6qI33kixVLmm2GMn1UfdcZluGZO+9+R0hc+VONUcIwV5L7IMGnz/f
	6Tt1NJJNqq3NNMf8GrPUcF3I4TaX719AiPghpv6g=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646061984;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=JIL/ZZ4rwNkIMfRrEx54jAX9L1omcsUTINTtYJoe4LY=;
	b=XpssaGK0eWL7JkrfW0oSQtR/nlE8dp09swe6TlL99lLUZxx35QjzfnI+oYaIw3An
	y93xhvq7cod4bvm9hhe6a1EGfuSkfiyHWnvaJseH/0rTPkKF6IR2B2eT7S1T0Uc1f5K
	2TYldW1UdKWpC8NSqwZZwnmOFfHsbkpEnl3EPLTs=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f40f09be3-091ab7b4-cdce-4aef-9833-feaefe920160-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 13f9c9b65db48d9efd246d89c78d5c837412411dcdc48cc0b209fa46a46e9a22
Date: Mon, 28 Feb 2022 15:26:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.28-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646061984
