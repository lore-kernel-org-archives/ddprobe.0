Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CFF524A91
	for <ddprobe@lists.linux.dev>; Sun, 27 Feb 2022 17:11:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645981885;
	h=To:Subject:From:Message-Id:Date;
	bh=66o6lIphH6kyIm66dLNw4ido+WJVEASEF7BFLoAmTCE=;
	b=ADFNJnf4Wuc/U6zy7gRLJx1ogSxHd/SFVjim6a0Zc5c3AJyP+IFo9190MwE4zIIp
	ouno8bZTctYLlwem4TNRAcxa2v590H6B4/M9w8ZRkvjErEeM/2lg1JQf6uPW6MSa+9M
	YeK6VPuTXpb+nQwJcbUZZ5Bplmf89zthfHK8Deo8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645981885;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=66o6lIphH6kyIm66dLNw4ido+WJVEASEF7BFLoAmTCE=;
	b=WgZvhDUFd/maHhWrLnfFV32qhzerKAoYwJyTPQrzQ3sthsPBY5Jz34v6XhTODwnY
	tjFfiumAc6cgg8sQqle+R1zertudv2iFifdNwfl1BA9bJM42609N+o2Gn/9ncO1o+4R
	KcjtBCLwBj070+PJEQKzpeZl4vuWXWoTRwCc/up0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f3c2a6178-30ee8ded-d62c-4c63-af16-69a8ddc62925-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: fe1c63eca16c61f9ccce0434d9e9031713b0421416665ad4233531d22ab86948
Date: Sun, 27 Feb 2022 17:11:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.27-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645981884
