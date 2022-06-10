Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A5177C
	for <ddprobe@lists.linux.dev>; Fri, 10 Jun 2022 04:16:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654834559;
	h=To:Subject:From:Message-Id:Date;
	bh=Z6poA+i5vhdLi39IZGzf565EpkHeJeacbeuZM5L1VjU=;
	b=NvQ7WbGC9efQilrtB5PGZga6X0oumjfIREKdLWzSN5YocU7EEz83XFu3SvzqB5x9
	9sZV7PcssygzAJfgeqBg+1GE/JVfDcRj1QSg1f1dnzrRiRr5TVhF45Ea7iDUFfBAG+x
	GeOD7P0+C+uZRVNFrEOqssIcr1+Vmdjyh8wwDA94=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654834559;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Z6poA+i5vhdLi39IZGzf565EpkHeJeacbeuZM5L1VjU=;
	b=HipxU9wGwplPbdJQjTNjgtLK9Y1mmme8WN+87BPmzM68rQ9LJO4zlCOBC99loMH+
	kUFcNt4OOr8FX894ecF5MVjF0fr7NiLbf5YjWvCmQf3NOycYqUUwQt1y0rf2BBXUqt3
	MaQ2EWL//gLE3LBUOVESxFh2YXuiAqR0X+4d8QkU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101814bd3794c-743195ce-4688-4a24-acda-1d29f6a08aa3-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b10032c5daefa793ca5156498c1164554a65010ab7408017b8cb1708e38ea461
Date: Fri, 10 Jun 2022 04:15:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.10-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654834559
