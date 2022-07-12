Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 994F34681
	for <ddprobe@lists.linux.dev>; Tue, 12 Jul 2022 23:56:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657670213;
	h=To:Subject:From:Message-Id:Date;
	bh=7cGSK48rtmdg4N2fkN6y0vfzgiYuE3bCglAwOw9WSms=;
	b=EPLj1mLul2XJ8/n+5L907LRT+VOolMB69Q07o8rKl3xNzJsabYVDGRk1/MUj+DBo
	+rtP5OyembhkoqRtM6roN2qvg/5HQlRCBfo/d4lVmhFrD6+eFfZiRvfA2oF2Jsjj/hz
	yuoSSmI1tWxi4LJ7ijXnoYKb0kaoovLCAEXk/RIQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657670213;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=7cGSK48rtmdg4N2fkN6y0vfzgiYuE3bCglAwOw9WSms=;
	b=h8WiSEJKm8j852tHNi6+zjrIU1YJpgE/rAgi4m5nNjwbY6CdbsKe/r7I8qH6Wr/8
	+sPWglb0BYahZbne35novFP1is07nr27r6/2Y1KuKYOMz+GY4TIF02/Zyd6NC1YdTO1
	cNGcMIflYw6Y1KkReyiDra3YiJIlj1yvKhVrnZ5Q=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181f4d81b5c-3ff7f2ca-8062-4b77-8ad1-6917744a9e1b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 34d33004043d7787892d29fb5bba72663e8747909d78e97b9555e6e0b6e42e72
Date: Tue, 12 Jul 2022 23:56:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.12-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657670212
