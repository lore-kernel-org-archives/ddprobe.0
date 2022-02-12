Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 970427D
	for <ddprobe@lists.linux.dev>; Sat, 12 Feb 2022 12:00:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1644667256;
	h=To:Subject:From:Message-Id:Date;
	bh=B4NER7L1Cf6oTykoIXqYvI7h2XLSE2F1FA7zyZjseR4=;
	b=TmqiCCnnhPscvNERHiRjowRvdPJqQDxjeeOEoxmHHi4raLj8jHCaztPqmtgU8xbv
	5WBiX1EoAtqWPMlgF+awhxc8fI3urd+yWJslL1qgbr4nWQcSk/dsNZ2vi+Y2kMLguc3
	I7C8wITORq2d6BP46s8BSKmtAerUCqAKPlpssx14=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1644667256;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=B4NER7L1Cf6oTykoIXqYvI7h2XLSE2F1FA7zyZjseR4=;
	b=BcqCTQJV5bxlHaw/LM9lCbwTXypO63VyA3nKWi6nniV8QP+HSHW83G1ElNjp5UAE
	9FTWcli0LXo6pGpHFWxo+xTSpzOQT2P1JuF0+Mr/OasNg0inFxTD4Q32KRFvzG4MfYZ
	YepQd1zT6c8UOYNeIuTCmqBOubO5+YrgmTlRmTU4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017eedcebeeb-8b34fdef-546f-4a4d-83bd-bf43bef6c01d-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: f15a1549e7d8f82ffd6509889110b8c3d4baa84ab36d305ef66f2ac7a406b5d3
Date: Sat, 12 Feb 2022 12:00:56 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.12-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1644667256
