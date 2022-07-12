Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E4E523A0
	for <ddprobe@lists.linux.dev>; Tue, 12 Jul 2022 01:16:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657588612;
	h=To:Subject:From:Message-Id:Date;
	bh=gg6CJ3BTzcZsu0lo2zD2TuPF9+/PLtvNHzTISj3o7cs=;
	b=AY0bcCaHVEq1NKXEeXQfTgz0mBIMMVciRVZdwqjhPlrTbBn0d8GJQj5DH2M+9n3J
	Xpltp4YLgerUbIFfblWUw/3dgxbO4iFQf3wIOEecWlO7zvBGU/E0EZgVaP8jnm9jRDI
	SXoxA1ZDEIaSSyC87KsJXKCVSQbBQ9B1kUwJ3wqQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657588612;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=gg6CJ3BTzcZsu0lo2zD2TuPF9+/PLtvNHzTISj3o7cs=;
	b=jOl1wfE9USHIzowD5BfGF+5iUZwtw5aH8gCAPfYjv0/vS9zG4dDBaOZ2dngt7FDb
	chUdReCSEotZ1iiQWo/8PylqAzyLvajPgxO7aDBf4sCNtw4Jo7o4RtnC1pO3hdcis8x
	NUvbsHs2nPXtk68icvqiEdDTCCMs5+hSjxm2eu20=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181effafcc9-089b0420-1ee4-4118-a1a5-beb69a75e2bd-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 1aff2818351292bfd8ae833cd64ed8d85255a97f38592c93f43193d613c7f48c
Date: Tue, 12 Jul 2022 01:16:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.12-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657588612
