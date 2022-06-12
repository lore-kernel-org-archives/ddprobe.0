Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 02A527A
	for <ddprobe@lists.linux.dev>; Sun, 12 Jun 2022 12:11:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655035919;
	h=To:Subject:From:Message-Id:Date;
	bh=65pNp0OBC7EsISZbF1fiFF4tHUYwUT5yE6DHH9Axqtw=;
	b=iQyA+L2wqPoic9esG4EUVNuwOijK2E74GF4BkQ1TCve9xRGB9dlKsCjsnHh5bbUF
	e6O1kyYY1SfE0r+j/h8cok+aaQ9XxNEDG7r3VttANb2AI1BV4dEewSHGHZ9lhP/rMpn
	N+xR8Zrf/2aApqHPilHy7AFP/tE+KzC0BYjbYPpA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655035919;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=65pNp0OBC7EsISZbF1fiFF4tHUYwUT5yE6DHH9Axqtw=;
	b=JPtL1nw2HL3/eqwlVYMJvCasDkPjylBc+wgpfN9be8THWzredH5ucP6LKPiTdzTx
	HsWQ5xFCKL08ODEdzjxndRM+bq6SXxoLmnXKnTZYoEN0ZKk8kJG33gY2oGWJGChKi7Z
	/vbDqdvBBtrC+49C9CX9JA0DrY0A+J55K/5VVM8s=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018157d3fb80-781a5e38-c571-4d68-a323-01def747d7b0-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 4ceeac47dc64ef00cc4a2f2b87809b9885e8cf233bc874accd20afb8868a14da
Date: Sun, 12 Jun 2022 12:11:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.12-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655035919
