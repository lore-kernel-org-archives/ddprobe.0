Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 17A3AEBB
	for <ddprobe@lists.linux.dev>; Thu, 30 Jun 2022 10:16:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656584212;
	h=To:Subject:From:Message-Id:Date;
	bh=I6fKKTTjZgcQnFGmpq/SUPxhyVp5SQommg2MkfTTuPg=;
	b=iUqX7OZp0eB6PjsN+hmIrl3b26/MOZCax0GaN+eLhIyJkajtvvLauKtRSw4WAsp/
	cOzESh3rBc41ypR25IktExfCEcg6mG6IQpOjKr4jOOTXdTf9K2A1lcrnBMbJHhiZg76
	fZWkMJXiIe5vmVpPTRUBP3AqYoci1rUhh6elnVV0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656584212;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=I6fKKTTjZgcQnFGmpq/SUPxhyVp5SQommg2MkfTTuPg=;
	b=P5VRjTqLSsJdEiu4rJCJtgXcNGv6AUufKJIZaP/iL34585eAGBZIeota1bmYZeca
	BAcoVGKO7UcNawYxY7VTi61Q2waOhBD9QFfIbGVfwAk7E3rIuTeJ9H6OlnVfQX0z6wc
	AWv9dI4Q/5+3T1vn0v12xyBQRcWBcsaWTvQYDWgI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181b41d0f72-d3a888ee-a16e-45e0-b971-faeda1878d2e-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: e15bcd68f99ed14797f9fccae18ba98f3496acb63f0d2d249a5ffc37b5750af8
Date: Thu, 30 Jun 2022 10:16:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.30-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656584212
