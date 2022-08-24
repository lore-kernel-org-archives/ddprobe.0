Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C20091110
	for <ddprobe@lists.linux.dev>; Wed, 24 Aug 2022 09:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1661333453;
	h=To:Subject:From:Message-Id:Date;
	bh=vq/nQ81KWXpdZkMTwBhkw3NGRzJLilYx0cZReazqGyU=;
	b=XfszKMNjSVBMtkwqwK9lloExX10zv93fgc7Ee2LExGPe9fcRAngBwQOEznQ/TV3/
	Gtsn2UTEZftL4fwbwX6n0JkRvrB6IHOCw+XnMNIQ9AC9n89XLBeXmNTPfSOMw+mggBS
	hodCcSH9nB1thM6gssDAqFgr91N+DJ9HcsjDKNFc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1661333453;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=vq/nQ81KWXpdZkMTwBhkw3NGRzJLilYx0cZReazqGyU=;
	b=eMcXfy+bCG1J+q+bIhaIRWxlVKNXRWkSOUSUTjF5lvjiic5aXH8F1DW2nhWzLWYe
	rwJ2pdtKTV0l9gPNomuY+odTckV4FbHaMNmtEuC8CxKAXPcBbahfZ4e+jbhJLz8G48q
	Ft+zXxyuca6SrUPbLfXzrk2MCfZKwoH/008kKb1Y=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182cf30b76b-9fe6a924-a7b7-4a25-87ca-1b65777bcf1a-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a972f8f4414af6ed5671ab66e5abeef4defd4a10545f0d0f8206a0a21de77571
Date: Wed, 24 Aug 2022 09:30:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.24-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661333452
