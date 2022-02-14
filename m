Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5F345A3E
	for <ddprobe@lists.linux.dev>; Mon, 14 Feb 2022 19:39:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1644867590;
	h=To:Subject:From:Message-Id:Date;
	bh=heE//nFDKYr8BGNvC1yWTOLeBjZobp9JwZkuPa+J02Y=;
	b=lQUUGSRoPHcmviOpwc8Ss8p9ObFwibusvqa9iHYivwFN/yU5QM03OUf8sspGQonY
	U3q3JVrEq/Xnglu6pgF5ucfKKBMG5CSW2OvAatliTL6AyPe2JAb8FKB4O3GXk3Kh784
	qE/+KuyFcImiPlHyqB5cTBoYyhNqe1jkmn9B1gu0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1644867590;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=heE//nFDKYr8BGNvC1yWTOLeBjZobp9JwZkuPa+J02Y=;
	b=ORt1QaKFxc3WT9mnUx0+cKpKZbvelt16TYM0tNZIWVoWvONRGxCztZ+7x+4V5nMA
	kK5F53q8yDQAjM6lDXCpIvjINY3xEkbJMSnuJKhMmT+Nv23qxjrzZ6gMAwW58Zn5KoI
	0UTYbbx2sPjZlFg4wNKjISYOG6To4gwwc9b7Ssk4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017ef9bf9730-060e2947-79ff-4f85-babb-d0426318a464-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: dc39cee3b7472bfbeac3ec6d36d51514c8483e7354b991e909c76bfd2e88f306
Date: Mon, 14 Feb 2022 19:39:49 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.14-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1644867589
