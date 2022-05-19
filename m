Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 122AA7A
	for <ddprobe@lists.linux.dev>; Thu, 19 May 2022 07:03:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1652943839;
	h=To:Subject:From:Message-Id:Date;
	bh=2Ceec5NFUPI1JAo/57te2aeYnz5jZdhzQWg4SHnNziE=;
	b=GtT6DWPqJOp6xas2fhkmT2Hh0xXNdTzWClvb/6cPI7zY7/J4itnuKsSM+yLzt5KI
	vR6VufP9JxOzT/nV+Pi9xnob+ALlx8MRDTJOo9zo+HDiXgdcWuVaaua/9B67B6AODNG
	AbJjQuy8QmTrjwMb/KUjC9aQzMUje1Kj75WyUf9c=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652943839;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=2Ceec5NFUPI1JAo/57te2aeYnz5jZdhzQWg4SHnNziE=;
	b=L+0AiYsbRzxXmdjYiWULPDoDInH8dzP75ExMW3M4paBQhoExekQaQ5V+8hqNcnSK
	l8fmgKqF6D0cKyNVwKUn84defGynZ+VzwNYpcLvgbQlCYouMfNNTg+S5Es4kpGYOMbf
	03RtY1vU1AILwWiEiPdUzjFBi3PubthZPFpVBjSs=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180db216007-de86fa2b-e2a9-48ee-92c9-da5d593523cb-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 994501b4550d6c1259aca306cf423828480da17029bf28e610ce275b16796372
Date: Thu, 19 May 2022 07:03:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.19-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652943839
