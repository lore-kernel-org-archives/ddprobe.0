Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 07901161
	for <ddprobe@lists.linux.dev>; Fri, 22 Jul 2022 00:06:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658448412;
	h=To:Subject:From:Message-Id:Date;
	bh=I8kFa1oBAmQfDXYfuVVIK58Oo8MyJlh6mnsghw7ikLw=;
	b=h8cwZIhlHgFtdguTS9vOzrYR7mVTsefBKQhh0Ww6EQs4WsqQqlWVRwqSOXdHKePV
	jrYciaXvP250gd74+GZV7uAkaA1nXG0uFzXgNuVE9IRL+Wm2xt0T3aK5aI1kZ6OpJ3J
	P32uN0+tlkqSct05AY0b8srf6ilEFSCx45ruur18=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658448412;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=I8kFa1oBAmQfDXYfuVVIK58Oo8MyJlh6mnsghw7ikLw=;
	b=KqcQezppY/aQrxfuWoe/3kEWxmKgWmfUtRg8xf/8gAL/iio9+SpfeYOPgzY7bSEZ
	v6Sd1W102CycWGv78byalODvoemGHWZbGOb0SkE14NJmEztOnfhtg5IibrVPt0uPgrh
	lpA/hppLbjJsyEK2qSqPkJjP/elNw1pNPvqbpYa4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182233a7e81-0157d73a-1366-4b20-877e-d3b1a671375f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 816bb32916522c8d23e451b15fdb0219b50f3fe0215a6ea820eef59fddb1930d
Date: Fri, 22 Jul 2022 00:06:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.22-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658448412
