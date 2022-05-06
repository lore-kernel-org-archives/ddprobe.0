Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D9767E8
	for <ddprobe@lists.linux.dev>; Fri,  6 May 2022 07:47:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651823278;
	h=To:Subject:From:Message-Id:Date;
	bh=JxxieALp55TiTzkEb0jTZXS03+3PbuGSK7iLJn4QiKU=;
	b=h83cGD2NsttwSYJe0RF550WjOL0TRiHmiFTO5PWVTgT7X0i80y81oLr1yvnYiCDi
	mLilaQAPsu1pTdi8ypMt3xReJKXBMO7HfBJM7XqQeiaogsRIabMZjnRnwiQoLfUJH+/
	xpq6FSnlhuz57Q0C4XCMbZR382D+GkwsRJQ0mfdA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651823278;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=JxxieALp55TiTzkEb0jTZXS03+3PbuGSK7iLJn4QiKU=;
	b=QQKbZzbfG1FFGoA/Is3j5HjvIpuaurEf3PInet3C2ifb/zKbPcW/uYiC7rnkOgcK
	KFy715UIFZeV7K0XE9bSupRzvu4BfY/4Lfx2i6Y23XS4vZXHIVDIGtjlmH++E85ZrAv
	Wa9hPO8btTKmEpT+voHV3ewre16qy8vFgKuzlrC0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101809856f8fe-0c820de3-14d4-4016-9037-50e4208558ee-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: fa1abbb48ce0bc5132bcc5fc92beb8f901625296019a645c34414c2a26e739ba
Date: Fri, 6 May 2022 07:47:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.06-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651823278
