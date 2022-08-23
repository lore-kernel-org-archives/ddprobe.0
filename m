Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 60521ED4
	for <ddprobe@lists.linux.dev>; Tue, 23 Aug 2022 11:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1661254852;
	h=To:Subject:From:Message-Id:Date;
	bh=QxTCoI9/VKH15DKVmpDeJZDuS2KQvllpqDOLFbZ211s=;
	b=VvthLbOPVrDkEs8f5htBkSp06Up7VqwjfWdComrE1NyIXiwahDAsuE56UHWK2AU3
	2Qo9bCS/nGfceY9Zxxo+imMCKFlAubVjJoLAm6Yo15j2aZS23w+icFt+o3/utEB99l7
	nseDBtVRD97iIxaS6Bga+jw3Oy7aSegCr6oGJd6c=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1661254852;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=QxTCoI9/VKH15DKVmpDeJZDuS2KQvllpqDOLFbZ211s=;
	b=Hu937S9e+oczoEeiK3a49VGM0V6jNh+7C4RGosW/URVyY5VXKqg/dHQlzSLnMmkI
	OzmJ2DCli9+aIEQo66ieSVVieL6b84pi6YoY1+YfWDXyudxDHZudj8vzA6LoPKpUDZk
	vEpbaK/Vw4fZgT44kTu02YnByJuD5Vktd7x5+GqY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182ca815fe6-9229df73-f6f3-497d-bfec-a9c94ddda948-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: d7c4093eef6ae4569763d6ffa6ea86e5dde27da649fb846b9b6e15befa896bf5
Date: Tue, 23 Aug 2022 11:40:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.23-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661254852
