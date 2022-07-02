Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 629F01383
	for <ddprobe@lists.linux.dev>; Sat,  2 Jul 2022 09:06:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656752812;
	h=To:Subject:From:Message-Id:Date;
	bh=9SED5YC5r8DGTfJLz9yRzCN4Tngg28CEeO2LWhEofi4=;
	b=Mxjm8j8cRdNu+otqUzywCaniCzHLKyQMACB9DGDxs/kxbEDMJ7/vbmSSBIWtBCnE
	1XvyP2bwt+BmaBw8Ey1yOj+kKSd+4DlLLrm7/7mIjM7RpWtBJ46WE0uZICQe50jtoVH
	JxOj+Xn3DimWUM4uBIzaCouDnkL3cmRn3qo++Qwg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656752812;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=9SED5YC5r8DGTfJLz9yRzCN4Tngg28CEeO2LWhEofi4=;
	b=QBmMmOQB00kWr9A2ICn2R+lSyCkGvUsqAgnBZtXiIzu0vgUy68kjNEaWEe+58P44
	IT9uo6tYKIcD4/3Nnv4fYz1BMuxeoH72sHciSqPw/USihyJt9DSepikt0J7Iewtmi2l
	Ut0C7fwgjHoFK/VoLqrYixIZ1sNSpoB94jMC35bY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181be29b118-95e362f9-858a-4797-9574-8a1f454dfb39-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: f93ad7c9d9f1e8c07cdc29ba358157f18efcd63954ddb98569d35457e34bae54
Date: Sat, 2 Jul 2022 09:06:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.02-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656752812
