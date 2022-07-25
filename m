Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 14A5D371
	for <ddprobe@lists.linux.dev>; Mon, 25 Jul 2022 07:26:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658734012;
	h=To:Subject:From:Message-Id:Date;
	bh=U0jNIMPapqXP1wOzmoq3/oOmxDG6DbXqe+1JpseU+Yg=;
	b=h/9Y1kmcmclDLemgzX5XcoWDeapdx1MLEVzH8MS7jnAII8+ljc5yqDzkYN0dgbmg
	o9YpycM82VxlhM1rKfc+7UYXKTtXBePBsY/C27VSt2IBdSTDHStqXj5Cz+jBQFHgJU0
	fpVxZhq1kFpfu29s7wff4V9GWSUAkBk5/a/RdUyE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658734012;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=U0jNIMPapqXP1wOzmoq3/oOmxDG6DbXqe+1JpseU+Yg=;
	b=LhwPv5GnmJK0swsaVWXRjvxdy+jAiaMxBzMrBQHxQYqzPVpTpjqLylFGbb8AQU3B
	xJ36ZnpxX8H9OKhP+a9AIxlmUOfUmQfnCZR5Q3wDfadDxuFu0O/hLEKhmE45b599w41
	7rrp1Jt8HdcYSS4glvGS7tARDnOAahLgL6VgekPc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018234406781-082dd7c4-2dbc-4866-acde-06d3b0245530-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 843f7b55c4de9868cc55a8ecf5ec610d6e081a0c57cb9981f76ce0616069ab7d
Date: Mon, 25 Jul 2022 07:26:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.25-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658734012
