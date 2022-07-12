Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7C18C23A9
	for <ddprobe@lists.linux.dev>; Tue, 12 Jul 2022 04:36:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657600612;
	h=To:Subject:From:Message-Id:Date;
	bh=j8yQMhNQaHdLi0KrlKdYXrzQdqLPl+XaOVv3j1QALpc=;
	b=YhtLVNZrSWSQijiUoejSACZUiQ5/yGm8kb47OHiPAw6VHmpdmlP/uo0wLH71j3R+
	6mxJ+ylRYdlrMEGvIVPCdC8MvT4NbW//ssKaBd0PvlRo7B4Ly5myaI+5NiFuLEx0M4y
	x0byTW1SxH1BQhFZLo/jTz9icL0lmdxSgi7/DcjM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657600612;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=j8yQMhNQaHdLi0KrlKdYXrzQdqLPl+XaOVv3j1QALpc=;
	b=bzchONHWBBP+hsfFRpqzgBUQVTfqCokYQgbTQY8p8jmvz1Hnk6L2zarZ5nzq9mRJ
	oTSXDRmt38Grwsbw1sT6ceQeLbzegNxE1KTTaMBSw7Nj3XazMovYRbOZDadfmWG90oJ
	dPx+iiNFnMVuL04fcEzWlpByrWb/AQ87i45Q1kDg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181f0b217b4-4d3f59fb-4df4-4e46-8a19-f5ec06d95a56-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: f8c39f34fa730d1e562694df294780eefb8319a57531f437663dee40f89e751a
Date: Tue, 12 Jul 2022 04:36:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.12-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657600612
