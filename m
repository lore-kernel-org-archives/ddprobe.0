Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 10D1A4A0A
	for <ddprobe@lists.linux.dev>; Mon,  4 Jul 2022 19:06:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656961612;
	h=To:Subject:From:Message-Id:Date;
	bh=uz5wfwKazEMJVYikRRZK++aVNdQQA5vwAWUBUjpUcLo=;
	b=X3xi5PWulQsvKLU/5UFBqW7irRkfj6cFdX7M9SraaygMm68MpIhBK7nQY2Ru6VcO
	2sfqtJ5aIi32PLUW3SGzWq2LOQL76bMnX+LJOiJuM4dN2XoUSWYEK09am+vKNnbGJR0
	k7kDJA/2rvSJDvlUvZl0fFfzNRE16Czoenbd4e4Y=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656961612;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=uz5wfwKazEMJVYikRRZK++aVNdQQA5vwAWUBUjpUcLo=;
	b=i6Juh0MMb/NIAuQ+927N0TYmdvret1cp0iImyZby/cO2n7g/YdsR7AfGgcDsh7KC
	waDURsmNMJ4F94YDIeLPnhN+MUzHYr0E9/L/ur33yQvsBJISeMGt8AwNu+hC28oR0Oh
	YHG1l+Nf5ZG2TtzESYbYiAue7QNC5ce0prVG+Mh0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181ca9bb9f8-b5d1ca98-75e9-4c24-af41-a7d7ed0a7ba8-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 3774ba248c2d53e4f33eeb1352e2939abb56b46aaab9732c04eb6d252a217f53
Date: Mon, 4 Jul 2022 19:06:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.04-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656961612
