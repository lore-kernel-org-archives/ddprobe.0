Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1CA0E7E9
	for <ddprobe@lists.linux.dev>; Thu, 30 Jun 2022 01:36:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656553012;
	h=To:Subject:From:Message-Id:Date;
	bh=cTtVko50g9oZJYqnMPIYG0GjaNGDnveazW9ua2PnnTE=;
	b=NdcmOxAqqzrivgC0fLyg3lZmhoy4Os0qktpZ4u0iKRS+Kkjsp4SCpy5Ct8+2VFy3
	9F2RMcWyPVPTC6PDbyAbvfugc3e60hZ6z5V2UTOGd3PBHB/EJBzctddZ1M5j6tjCxLy
	oZFTMJtIiwz3kJK5Wxpx2Aoe7/bQQwZaS16J5C0Q=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656553012;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=cTtVko50g9oZJYqnMPIYG0GjaNGDnveazW9ua2PnnTE=;
	b=doYdgqTT9rYGfQFsHlulI3rc1Wn3ZH3fUi/wpqzkjn2ZuxqHY2TIPgaIrLofrI0/
	qXE74x2cZNz4/Br1JEAiVM+ltZGqta9/ZS4ZLmpda8F7Zi3WM0NI7eEOgq4Lc3rhddV
	sm6yRigdK19wzFYTvMHJZejGcZb8u0hTtwznYfIU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181b240fc33-6a620ecc-00f8-4123-8415-ce180aa3a998-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 818f3472b2969bf786c519e38265d9680be4f2290c0d9e9e284c7a595babbab8
Date: Thu, 30 Jun 2022 01:36:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.30-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656553012
