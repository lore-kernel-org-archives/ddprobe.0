Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 45D437F
	for <ddprobe@lists.linux.dev>; Tue,  2 Aug 2022 08:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659427252;
	h=To:Subject:From:Message-Id:Date;
	bh=PZ4oAiNY0Awkn6V8f4128p57vfsyS9lQBa52zvvX4NQ=;
	b=buoc2+KPLsSlgWD3g077Fwg3oROFAdlmSIMEsS//quMHOFZVQkV9U7VOuDnqmKhF
	xiCLrKKTtnImXQpLWwfKuVpDJcjNSnc+eB/NKS71WJXOwDgKpEQMUyKPvDUxoUc7sXk
	wsiwwfbsggfSbvZrOTrByFMYo/LZMQqtcZ1vADQ4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659427252;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=PZ4oAiNY0Awkn6V8f4128p57vfsyS9lQBa52zvvX4NQ=;
	b=TBi3Y9xrO7um0uESa5LMxXcMAVQrZg/8MJPxsvYynyz2nFNwnaPrzCsGB8+3QTSc
	JMEDsw71AgJJ68VjJGYWYzF8KbPD9+MaaJ2I+RslaCcRmbhrHf/CdeBCMVK0eXTInhE
	QvhVAoE5N2HRiTYdVRWB/Z/B+I8+7Tesla/dd9W0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101825d926936-6081a601-2861-4a91-80fc-9531bfc4775b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: df9c22ad5cc0820640db42412c5942008d0c8d119bb99be3729c861548c77af8
Date: Tue, 2 Aug 2022 08:00:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.02-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659427252
