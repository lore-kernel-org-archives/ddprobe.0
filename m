Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0253D2F25
	for <ddprobe@lists.linux.dev>; Sat, 14 May 2022 21:47:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1652564879;
	h=To:Subject:From:Message-Id:Date;
	bh=xC708SkS07sswtKLzapmGfErRKRxY8B0EdCuuPIdyb4=;
	b=c3xIOXf8fhq97Q/7TuX0ZBLAaLFNIHGEPz4ie63voN/rtfhPyVVa+jc1b0y5+D6o
	th9weQSvG5Iz2mi5I8c+HmsEOpJ2KsLCFmV4jM6E0GlxVIBVF5ydGTNQ8JI0Z6fBB33
	lksjBjdI2LfY+HePVjmkYwmKN8S9SvijG56nOQc4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652564879;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=xC708SkS07sswtKLzapmGfErRKRxY8B0EdCuuPIdyb4=;
	b=AZ2fT17CVvgzGYzl50ZgzSbnhMZscRn1Dyh4KAKVbgdAhkRxTz1gSIsqLc5QVQYL
	6icwta8Rpp9+wK4hkLyjwEdpxGr7kXYmkOOGWErfk+kEQjlUJ+00gq+Hnm49aHQ76fL
	KS/V02no9S8fIh15EGZmX8ds9u92IWEbK009ucTA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180c48ae7a4-e81a9dc2-b4b5-4509-9d52-f5a3a0a166c2-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: cd4a48a43a5f59e62f744d579a1ee93be51d7cf166014dee1dec36902e0ed300
Date: Sat, 14 May 2022 21:47:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.14-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652564879
