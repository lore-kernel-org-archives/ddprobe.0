Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 525577B
	for <ddprobe@lists.linux.dev>; Mon, 21 Feb 2022 06:51:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645426284;
	h=To:Subject:From:Message-Id:Date;
	bh=tsufHQqr5Hi08b3BsfxKbfv1nQGBEPoMbeUJXZuEVBM=;
	b=jzMLGt15H7S83cBfUCP+bHvhXD3uzJEpIEWuMRNdfIRSd0xHbS8S8J4QSO+tPKxs
	vStk8YjRycR2yIC8fwdoPIjXgvFHEsDuNtKZtmXcOTHXG0FZ/y+DBWtrg5V+4HiKZcu
	CZAAzMPtT7Vy0GMebEVZbdD6cVBHKA1OBgZeETmw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645426284;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=tsufHQqr5Hi08b3BsfxKbfv1nQGBEPoMbeUJXZuEVBM=;
	b=dQvq/S3Y/G3FBDw3jT3u8ShugdtRSfxsA1yvoA6+a0QtC/XCsJRRQsZUoJQzW8fT
	q6aA3wZE9bEFk167s3ElbqXCRZPhaY5V8XWgGd3UcCV4dXxP0cy0AMcz9yKzo1ulhn5
	c7BPBcN6lNeZXOPQ2tEsKn6ft+A+j5YDXqW0fXs4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f1b0c98d1-91aa20d7-7565-486f-adac-ed9a43a83b72-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 473e41e29762cc048233b3b4391aae0a2b1f6306399e889d8588fec4917bd1fa
Date: Mon, 21 Feb 2022 06:51:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.21-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645426284
