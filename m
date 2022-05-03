Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 121907F
	for <ddprobe@lists.linux.dev>; Tue,  3 May 2022 16:57:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651597078;
	h=To:Subject:From:Message-Id:Date;
	bh=C0p6bkE+Epi3fGcc9PQbmyO074m87dd+pjUgTn8dA44=;
	b=cxf0rbL3RlNjqCdhUN/xL2SFWS8VFim9Vz/zG8T36sHirUJ7IX3PcLysqrJvb/Hu
	TVmxpUr0PzA8ocDipS5xO7SZZ7bJLnTCpsUlK5ew7MTZzAJ2CvygqEk4TWlbq/fBvwH
	fi29WAfuInN1cbyh2wXjo1PtVicQj0Xlps8Q7sFI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651597078;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=C0p6bkE+Epi3fGcc9PQbmyO074m87dd+pjUgTn8dA44=;
	b=cNIcTvUAS5mi3LP841Yb6qwqPJ9oHz99PvfXW5vrx+Xb7YEwRdVzIz+BFbd5VQMc
	CMSn4GJblKO67D+RGNeJcllnM5b0+/Bid5w2gGyWuL8AVUveIXSiyWSoJn8wrFy7g/W
	F4ePVEGprMNSetJ/v62Di0NPnUqUtUPx0J9nSrf0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101808adb6f00-8252c237-3a46-4efc-a88b-23117c7343bb-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: fe252d68b5580533299f19f2334e3dd947284d2fc8c00a2cf69716bf2d94c4a7
Date: Tue, 3 May 2022 16:57:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.03-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651597078
