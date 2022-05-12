Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20D132F21
	for <ddprobe@lists.linux.dev>; Thu, 12 May 2022 11:10:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1652353799;
	h=To:Subject:From:Message-Id:Date;
	bh=h19FMCBJ8WfdOmACldrghaMlhIRB9YvMecSgqfFciZk=;
	b=SVUl+vawB75xDqYXtceOk6i6w/pss/TVbZ1Bhy3lN1ZlnkHevUhOTM9gwhvDs4kH
	f3zwvaZZKgyisVyWoqjEUbAUFvmnnDkshAKJIPRasWFK5/TH2iqf9i6gt/j4plVf7lz
	xMuoy0qKSr2n+vE1MANWrDKhkigzNNPH2MXKQuuw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652353799;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=h19FMCBJ8WfdOmACldrghaMlhIRB9YvMecSgqfFciZk=;
	b=j5UsHRziJOydjM5XTiRlU2VU+rfmdXlbR8joArlSDPcCaI3TLKk1feMDKiutNPlb
	ziecQDBP1TagFXf0F7IIcVQJozGtamP2/q32O8T1oYXlsMN43Kp/rUrsdTnnE7EIlWV
	UOdJI6Rd32N9XCqipYwvPDBnpZHKFcGn5KjR0xMo=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180b7f614a9-e1f27c06-9b65-4ce9-8883-2caf4ed5986f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 5f9658650df7be57435f9caf1eb92530762dbfd2dde12864eb4f9ed6b18d3987
Date: Thu, 12 May 2022 11:09:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.12-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652353799
