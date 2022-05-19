Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E785128EE
	for <ddprobe@lists.linux.dev>; Thu, 19 May 2022 14:41:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1652971319;
	h=To:Subject:From:Message-Id:Date;
	bh=vQD3fUO8HZrT3TjEC7wbTI7upTWHxKvhYK++QmtLJd4=;
	b=XpmlRF+q+td/thPtjLHqMmER6woWdLUuousfOUj91AyViEK9+3nPKH9TRoPNDpa8
	riS4RlwOs1r7jXDXIebxkecmJGJTxET1URR3uup373ZXxAqVCUv1BdI6ZwXtwB0uDRz
	GUI0swj2aQ3luiTkVn1q+NDKgZOtnZRd9Dm5T+EY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652971319;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=vQD3fUO8HZrT3TjEC7wbTI7upTWHxKvhYK++QmtLJd4=;
	b=Q5ZBb+fmVQ3EDvspkNUIECJZYjkchxK3vNX7RguUZaaQfro4JuZ0X9nObpj/Cl4a
	GSFdRcSAQSo8CliZp5Y/KdK2OfCFC67rMYs+4b458AIgk94LcfJEEF4APkeQI0PaSHZ
	FAIO+k5SrmOq+BBzX4hNyg9u4wzBFZNKLeVQqs8o=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180dcc4aff0-d353938a-fc0c-48fb-ab9d-2f0f232f07b4-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: bc65b4499edba0b9d585aecfcb65c7f0cd917e7383b769b1846c8234f72e666b
Date: Thu, 19 May 2022 14:41:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.19-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652971319
