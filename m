Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A215EA4
	for <ddprobe@lists.linux.dev>; Sat,  9 Jul 2022 11:06:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657364812;
	h=To:Subject:From:Message-Id:Date;
	bh=UvTNFe6nKrKBZ9KSRzgOHc2wmuHevM0Of3BWbDUa8e8=;
	b=DoMXeIi6hcJq6kD82rwFCw4hPuJUh6WG4vIXN0J78OV+kHLVr31S8W1L7PYcqkIN
	hZcwNcrDlawIQQbV0yjOIBe2DmHFoIQPtiHKh0EXrj+iuQKUF3Si1FrAIOa6th0BNGM
	GUgw4FnxOh0TXTafR8VXvK3JRmkPP9k17XE+flPA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657364812;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=UvTNFe6nKrKBZ9KSRzgOHc2wmuHevM0Of3BWbDUa8e8=;
	b=fuLe5aqzbceYoaZ7EVsc3YEOCjasIqt3sbBoLyYuSjy3qYcF5IQIUDN9BXG/dbxn
	7lQKfO7oRuswZy9N94iY9FYJPUsa1ePMKHjpPPVlD6EB2AStxaj4g06iKjEdHAdKkGb
	psm96B3aCLVW7xdc/llUjNCjWc9Ca420sCIDhDmA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181e2a41248-f9abd52e-1382-440c-aa48-1445b257544c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: af5cac48faebb2cae2ee287c177cb2b424249756a28808b135d922b687c28bad
Date: Sat, 9 Jul 2022 11:06:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.09-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657364812
