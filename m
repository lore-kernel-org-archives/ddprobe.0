Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 30EC31366
	for <ddprobe@lists.linux.dev>; Wed, 18 May 2022 02:40:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1652841599;
	h=To:Subject:From:Message-Id:Date;
	bh=u+Jmaes+nGyus5okOoszu9mZub8FcbarPzg8LQigOXI=;
	b=jMJ6sOBX2+RCB3Kk5BciW9Yju+AYKRKvqTr3XbCLgtyGbnlDcS6BNd5ClqFuP4N0
	2E5aQouloFrulZy3L3/hsHWaJ04Qn92th+0n2+MJS3cCRo8WJf2lHScwneJ6/1SIZDO
	vUFEfbjnGnBmeTvnxqXgKyF0C8qVaSNJUIGYkwjg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652841599;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=u+Jmaes+nGyus5okOoszu9mZub8FcbarPzg8LQigOXI=;
	b=GmUlU1j6hqSrZIic7yUF7DfJhHFQ3yFn+OFKjPZFk1X1hQWU3YYGFCbfKN/njpXc
	wVHKHd5GsRHXS7bNSTur2FAilDVf9xoRIcRFAN6O5NFGoZzLw8UWFHhg5m9nHjKsrpH
	AaAm6GpjHHxH/lBp04sMDhqQM/ZWsnCYRcmVanyY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180d5095159-2327009c-591e-4fdb-8c5d-0ba47704002f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 42cf5090daba3dc66530f67f4f86c179e14f311c4979fe2cc8bb4bba80dfda07
Date: Wed, 18 May 2022 02:39:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.18-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652841599
