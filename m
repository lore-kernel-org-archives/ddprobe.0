Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EF9522577
	for <ddprobe@lists.linux.dev>; Sat, 14 May 2022 16:54:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1652547299;
	h=To:Subject:From:Message-Id:Date;
	bh=YJEJ6bvqfc6QSEhrAHeDPWRS+7W6SuCSXzXPfV2Kqzs=;
	b=XfSBwgLW1naJ/HnLPVXPasq4Jn4JD98Wvus0C9JX6qeTlTWvXUeF421PSZu2XY1d
	JD7S+O7uo7ff/92AHMONNAbVO1NsNoWD6rbfm1SPRcF8gn9TezNq1+a7AnM7pZ2KyM4
	kA/xbqRL+pyWy7Y9nmYq+2uAMfuWGz3qHs8jodvk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652547299;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=YJEJ6bvqfc6QSEhrAHeDPWRS+7W6SuCSXzXPfV2Kqzs=;
	b=bJV/mL6GjmMEKRZNQTabEYI1G0UPT6TJTEGFk3fpqIK+965zpqFQojkYPn7Ft4Cz
	RkPXub7n50gDiHomyE6qzYsPr7/dOFBLzSqtYIxF7r/h7tusoh2wdG2nwwP7EkavIeC
	h38nvLDlQltYp9FM7+phAStBXv53GW/pVTRcmhNk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180c37ea7db-0311c013-2c86-402c-a3cd-9843a9bfc41f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 259fe5e221e2345cde3ef36e04c99b2d15d2944fb2349baaf021f97d73ab54b8
Date: Sat, 14 May 2022 16:54:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.14-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652547299
