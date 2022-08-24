Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BEC20EA8
	for <ddprobe@lists.linux.dev>; Wed, 24 Aug 2022 01:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1661304652;
	h=To:Subject:From:Message-Id:Date;
	bh=hx4C81eMtwSWjo+5NRkBHlCWxMCACaIA18fJ9OwzDg0=;
	b=fVlx17/1zY7Pj/VVmymtuUASRzM/CjrPpKpYnzt2QshUWeHqaXke9hCed57IvU+J
	IZ7G9xND+YluVbq49o0xOlZegV/lB8aOCF8IsUONDaMlXEZz25p6bUJU7sUivzK+qpB
	qa/VHIAN/VhLPAdyNh9ksBOudXZrenfORR4s1efE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1661304652;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=hx4C81eMtwSWjo+5NRkBHlCWxMCACaIA18fJ9OwzDg0=;
	b=UFjbpk4sdZ/s11Tg0FbFglhkOPdl4UNmyLC2ULfQhLPQY0GEgGP2E1f2+P5NULzJ
	0nlyUiWqvI4F6L9SGLXrtLWQJ3mT/JLg56ND2s53AJTHYSr3XFF8ypnUBx/boqyvzx1
	O8qcTCm9yw/DF6klqMdCrJhTQ2o1eHWJ3MLvokqM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182cd7942e8-2d0789c5-a2d3-4265-9052-504148a80afe-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 32a8db4b09a5c847b69f012a475f9613df3e458f0fe6df57bf94ef5ea243e0ba
Date: Wed, 24 Aug 2022 01:30:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.24-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661304652
