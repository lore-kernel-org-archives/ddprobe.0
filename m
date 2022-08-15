Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 776EAA52
	for <ddprobe@lists.linux.dev>; Mon, 15 Aug 2022 00:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660522252;
	h=To:Subject:From:Message-Id:Date;
	bh=6zn0qF2Y77G8OXSjX9l3FbVQfn1BjWxBnmUCq7KcS9c=;
	b=g11sZ5jYqDIYVrHOoJ0m8lPT+Bo7Mz5iuKEoHnijY8aj8Qsfv79zWfBRngM2fFch
	Q0UZY2tNIA52bR3jmxQq6nR1H/jaEhGy4ejTCJeFHWRTxMLEfWVYxckNeEGrNvAbdHP
	1p6ZL2F+T5y3o9hyORcDC151SnP3TVYQu6aKU3do=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660522252;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=6zn0qF2Y77G8OXSjX9l3FbVQfn1BjWxBnmUCq7KcS9c=;
	b=TRABlnemcBhinwmMj8tR7zZ4jr2FLfbunUa+jQ2zcUbAEi2K+J2sACTo5kg4VCtD
	uKpGwJF5i4J/mnvK/+BqP4WUjMpE61ja1fNKeZGIcRMXtCHKoKn/H84QM1bIAfh5Fvb
	B9ZOpgZaFkJgv9K6iB0jRP3RVh9pr59UjuAY25t4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101829ed6c94c-a0fedeb6-8d5e-4ded-97c0-34d0384df17e-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 4bde958f72c7afa804d99c77ff8abab1b1fe1cbaa0a240ba198b46a7ccc8ad07
Date: Mon, 15 Aug 2022 00:10:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.15-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660522252
