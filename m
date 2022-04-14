Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2DC377A
	for <ddprobe@lists.linux.dev>; Thu, 14 Apr 2022 15:44:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1649951098;
	h=To:Subject:From:Message-Id:Date;
	bh=bLBIo7RVp+Lk88elsj4y0cCuB2X5IMDYSzU7uV5At+I=;
	b=mwleqrsEkt2lxICpp02Mj9coW/cdrJui++IzO8OkV+64dO/Ytm2VYEO+9b94WwO3
	1c31P5lQK9qHN0hnl3CZY1rk1Ek7vdBSpUr11U8P2tQL2VGatIemt1YHfz6Jzfx//Dx
	i7ZEEZWjMX6ghNFql9Vwsn7X/lqtjiXZ7swLS1W8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1649951098;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=bLBIo7RVp+Lk88elsj4y0cCuB2X5IMDYSzU7uV5At+I=;
	b=dhRbB8dsisbjUD5/GigwxBJF8mvE+YrhZ9Z2KKjm964VTjVTaEB3BEUvJjHoQoB1
	aQSxYoBevMBbXPIasyHnfVqnA412fLHLcbV9JJxpR8s/m4Qup6dG17ao4inxphimn0d
	iW28A0JxjU8HIPc/dQjX4mW/8sp2A1la5NkJmmZk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018028bfc5c0-f9351caf-a63e-427d-ac90-fc35d24cbbbc-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: bfbafb310bbfe37c18fa3e74e46c3aebfe3b6fb5f2c3ff8348fe2b9bca55ecac
Date: Thu, 14 Apr 2022 15:44:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.14-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1649951098
