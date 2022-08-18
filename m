Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 46FED29AD
	for <ddprobe@lists.linux.dev>; Thu, 18 Aug 2022 10:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660816852;
	h=To:Subject:From:Message-Id:Date;
	bh=7FJDPFXE/W9VXcZvuRmg3j6SRCsBiWFt5HtjyvTw2qE=;
	b=DPdcS1tiW39h0tJiKY7cnZZ5QIR7/qjulFtiKtvPLWc4pVZLoZt0Zw+wF8yiwwdy
	GEuZFAOQcY/T13R6PmMOtyJ43gLq+lgMLVrJMNLD0h80mNuwOzj27QbuL4SjpxXhO3t
	dwQm4e8j2cxZR+/8cfs6coZCqLHfl3QfXsYTE+40=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660816852;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=7FJDPFXE/W9VXcZvuRmg3j6SRCsBiWFt5HtjyvTw2qE=;
	b=fpoWoarD0qgvw4DA3eX7af9kFfRESQpf26K+dMXFcwivrrcA7Ahh/jKGWPAX6GJT
	HmiOQKKd2A69a4RgnYrDprZNLoDxtCJoGKlt8cOQeTI7Nklu54eh/JiPmFhJVz5u4at
	3UFCb7lh89E4iVe7IBFHkYRGbgv55w1CpSGoW7KA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182b0660657-ecbe9f44-46ed-4947-8c69-e72ee2cd200a-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: deb3a5c072033615c2e2e22ef383416ba8ab84f72b164cb84452fc51b273dc20
Date: Thu, 18 Aug 2022 10:00:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.18-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660816852
