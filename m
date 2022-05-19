Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24BDA7A
	for <ddprobe@lists.linux.dev>; Thu, 19 May 2022 07:56:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1652946959;
	h=To:Subject:From:Message-Id:Date;
	bh=17Wvh2Wt2XhxpPlNc/rTbzO5uE1bKFMYg+QOCV/d3vQ=;
	b=i7di0Ze1BkIqDAtpM8u4FXQXI5NE3lv35Ulb7d5sBbWHnZqVJsViizdBpkYjESBO
	qVAtYDK43esY7pC1U6QwOfa67YQLvrZMujwGvMe4PDvtKXwBh2Rh9QIeAeBXAUzIV+G
	xyieH5mX88a603r5kZ3+XJoDsAvCwu7pTlSgEwy0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652946959;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=17Wvh2Wt2XhxpPlNc/rTbzO5uE1bKFMYg+QOCV/d3vQ=;
	b=YpXaNKUl7Sk5MQsR9jccVWg4loLfpcOG6BvJG7Rin30j3Mxjkv9rhU+1AtPiwRCC
	3g5+6Aii+qwLZyi6cM3/DTEeZhCzYJqGYJM8v5X7OX6q3QHl0oGjPm8nKotW6k2i9yE
	b7eqCvNKADm7QapmRwLnxJE8qXXup7uNIW7e96e8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180db50fbbf-fe2f630f-0e05-4a85-8ec0-dd4c1e279083-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a7984112d1557d3c60d580cc2c685c27cc55cb656073ebed45e20e38b8bf7c09
Date: Thu, 19 May 2022 07:55:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.19-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652946959
