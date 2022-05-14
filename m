Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 267C436A
	for <ddprobe@lists.linux.dev>; Sat, 14 May 2022 05:38:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1652506679;
	h=To:Subject:From:Message-Id:Date;
	bh=tjGstMx51XiRLCu9s+ZzM7AFsj1jNu7UXxG7rQzwhV0=;
	b=Wc05gcU8OtfexH5OrnAX2bugVOgbfklJo1vv+9+HhhDNoHBFJUbvYSSsNTso55/d
	SjrV8ATxTikxDNJ8dP54PT1mVugILdFWMvWxKTPY9xkFSeDxgW6i6Q7yVR9VzCQRan6
	lY54Lrx2Xs42y3Y5slKlks8L8Tkq5j7EpqF1ycLA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652506679;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=tjGstMx51XiRLCu9s+ZzM7AFsj1jNu7UXxG7rQzwhV0=;
	b=kgP5F4DS1YjI3e3RrHYkzqygCHDkFawL+EYpeXWD0hz437lFp3A7zFwsxS7HtCyY
	ACMySmaeQCcw4QWprK2wrjmaJ3/eQ+cwaTxiqEJD6jqJ4cl+XxkrZJm8ivXNHeMXvrl
	qbr355S2ifjYk6VALDKI8kqNcvZMsICouoSK+M7A=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180c112d7c4-38651adb-cc90-4f40-99e6-bb31b5ac47af-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: fc0802f70d2f28695533c054ca08a3dea2b0b5c0269292685d6ce813461d00ac
Date: Sat, 14 May 2022 05:37:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.14-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652506679
