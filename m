Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 815F32904
	for <ddprobe@lists.linux.dev>; Thu, 11 Aug 2022 07:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660202452;
	h=To:Subject:From:Message-Id:Date;
	bh=qhpSogWWxy0iFTbWVWzArPgy0NYItFylhxCMwJrmCXI=;
	b=IY2Jjazk/sc3p8EKtUH/H5yqvn+h7pknOzYQmO4hnMY8W2CRYPGgnmolZXh0TgSV
	ZX1VzHetZAQcdI/3qre+58g8Gl4Nu0WU7GOcAXSCa3Au6Cm0aSO41W53OcZjFnU2wSl
	591yjCZ8k+Fe0T3pS/HuQavbNnyPtBpL1HCJjwpY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660202452;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=qhpSogWWxy0iFTbWVWzArPgy0NYItFylhxCMwJrmCXI=;
	b=RouwxfECZhmM8EQ3yIqDgt6JkG9SH+BcVuc6NkIyRLqr7F9CurVzNfz7xSq03F7+
	+gd1CGHLQvou4S37ZVzthMvBGnCq3iS96SbLddLlb24IjnL5tb6XQbTRMSUxc3NHG21
	kl/WTF/nCZ6rYBsVX75Dia8ItnR4EMOTIoIfdCEg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101828bc706a4-02e2675a-6415-4bb2-b976-4820a6a3aa63-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 9dc805780c8bfba40664f688738738cc0c89d4e22b3888159e6d9567d1341df0
Date: Thu, 11 Aug 2022 07:20:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.11-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660202452
