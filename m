Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 904157B
	for <ddprobe@lists.linux.dev>; Tue, 22 Feb 2022 17:36:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645551384;
	h=To:Subject:From:Message-Id:Date;
	bh=7w4vCNDW7m0gpM5BTDN5HVLLd1IuuGFhamFacwgprbA=;
	b=QNs3Dk3yUq+MGk7wFOWYODF0g2eO7Wt3U93AT1CPNqgvNUAuszuOJGpXoX9e9TJy
	sXszUofw1F/F6FJPt9hW/PYBq45K4fAKMNIUVcSHHOUiKpEQylODJ3nBN7LBZRiL0V6
	LV9OuVUynZAtynYM9gkPj09Nirq8Z+FU/Sbx3kAo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645551384;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=7w4vCNDW7m0gpM5BTDN5HVLLd1IuuGFhamFacwgprbA=;
	b=PIsK3ilI4mX3T6v4bbuMd09Dx6F6D3ulm5ZiaG5eg4Hoog3Y42Dt+HHGwZBjUqIw
	nX9HXLK7vAs3HMqwDPf+6J5uhaCE6H8RiVLO6kJ3ojP7mnUiIM1BRBF9lPHqb8GfF6p
	3nr4mRb4Am70ZvWHSU8/CwpaONeaIgGIjJTq0hiQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f228178eb-7e96c5d2-232e-4d83-91f6-e0b64821ea3f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 78dc70c98ae37bbc5a61ff214384daaa193ac31c1f0dea40d481268615d2285f
Date: Tue, 22 Feb 2022 17:36:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.22-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645551384
