Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4919333EB
	for <ddprobe@lists.linux.dev>; Sat, 20 Aug 2022 21:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1661031052;
	h=To:Subject:From:Message-Id:Date;
	bh=alKkGf5pBy9EbQMNXbNdd9eQVIQWxlSN5+SlWP6LYT4=;
	b=d2QL08T5GVlzuDyq83fLnVo9tZ8nUcEPGswsApJbD+yI/KHazrv6npZ1isLA2mNt
	uR+q1tpSzw89xCJUsdirSugsaXahWFGbdJrce0QCWJl+fyEDLVkUHZ+N3/6E6/nzhSy
	tw5cGIqc4L98ZEAWD/xD/jOGG7HiDQOGnUvbB1rM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1661031052;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=alKkGf5pBy9EbQMNXbNdd9eQVIQWxlSN5+SlWP6LYT4=;
	b=epUmDtJ+bei9vnMTvg+BEU8s40x7rU0oX3rTvjKVWLfLGaqnH7ePWew0NyZgO4nw
	H8CV6o30plvRIHiy1VHhKokMiMdk0PAAOR5yp2fW95F3bSjn1kwz/n2EkutDryJL9Go
	Si8vwtHzp8ZX6xqQ7StsSCDPI1NUWp8Pg660/9QU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182bd2a752d-55b85ea3-36dd-4a72-b3b4-2d2cace22db4-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 06d1083c067ac1d4eb1afeed71cbd9daf76a4b15fda0690c4d18c6e0c57dd2a9
Date: Sat, 20 Aug 2022 21:30:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.20-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661031052
