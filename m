Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EDD8A23CB
	for <ddprobe@lists.linux.dev>; Mon,  6 Jun 2022 12:18:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654517939;
	h=To:Subject:From:Message-Id:Date;
	bh=4EJRPHSXSpfONKN6tTXWI2l6lA5KPcRE9f3+CqUKq/Y=;
	b=VV/+qshbOsH11DXVUSvox7/D9TF+3WqHLmXVdLAagTXKkbKMThuNPSG7IjUlgqcg
	VMkbw1P7tB7WDTGCFXbtDyE+0GrnQjI/CNupN7AbuQ1wTF+wJwJOA7lEyYkwvDma1MO
	7GxJqsypvJKEw+b9iapWrrod/55a4dWe3YzHMUSQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654517939;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=4EJRPHSXSpfONKN6tTXWI2l6lA5KPcRE9f3+CqUKq/Y=;
	b=UClIyIEoXwuV7QVHFCIuh0qMVsy8D7hlI04WjUdGTLnlaYC2TbOJiMvHaEfiQkIT
	fR2qVfnI0o59Aw5d6eATZUSk8LAqYU/5gIlYRP3wjZ28UaDO2hnoYVNO3+E33WyL8Oi
	GcPLa8Sv4j4MfjhXLFIhRkSEHecf4Q37cAur7I9c=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018138f43c4a-35b2094b-e622-40b1-9fbd-fa2c8d6e524e-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 33b0220f432549e0bd37450022c6f9fc574c6a46923614029df524c0be3fa736
Date: Mon, 6 Jun 2022 12:18:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.06-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654517939
