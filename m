Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E47D73D8E
	for <ddprobe@lists.linux.dev>; Tue, 24 May 2022 21:35:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653428159;
	h=To:Subject:From:Message-Id:Date;
	bh=WDGxNcejRTXFiJRCgLLFHaV5HjHdfZHdMOIMwgSHQcM=;
	b=lUG0J8EzQ3AfTV9u7AuYGZrVJe5cOkiOYb7aiXQzKypdLb9aXs7JNziHNqTKpeB6
	Ue5CWkfW/VGWvn8uUssEJUCrOrNVq3HJZYa3kmPKoubhhy4lqj0IvK/dXh2TUdLrJEl
	SYkJt9DW2WLvd6IOAzbtqBINJXhDeWTEzpj2TuCg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653428159;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=WDGxNcejRTXFiJRCgLLFHaV5HjHdfZHdMOIMwgSHQcM=;
	b=QeWlRqHh6sDLk+oDB7VNgB9q+wv9L7dH8ODc+XLRmThs/I2eZ1bOayyhkwQNygSe
	g4cSRTS5LEv2s386oUvivXHGuI/j38QAfhNY5Im8hTDD8JqHCOhU3oluBG9TW/h1Efe
	yorI816uaQjLjKaF0gUCxyRwaAtANdWVv9bA0XIc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180f7ff8339-ee7ea09b-8428-4eed-a4d5-f5af5683ef32-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b59cef1cb139a1c7a41bcb9970a386d4853658c1b10a2c99f6a27232f6ddcaa9
Date: Tue, 24 May 2022 21:35:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.24-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653428159
