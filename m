Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 39D5A1376
	for <ddprobe@lists.linux.dev>; Mon, 16 May 2022 18:34:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1652726039;
	h=To:Subject:From:Message-Id:Date;
	bh=+a9ixCX/YnJqwaCcsruL/uZWP16cbIER5SfU9MggisM=;
	b=QcguPnJNhcR6yYuZRal/L1QZmMccUImh1ORbMtuBdxla10GUZtUVDtn5qznN0mob
	8XLfYY49IBNxML8AcZY6aMgVy/FHrWrTkp0xaU0uAOzRY/pWrlTm/TBJ7cH509e1wAY
	Z7sD/NvxEyjQ9z5pLn7UbBHyFVeyFYpbw2Cnsots=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652726039;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=+a9ixCX/YnJqwaCcsruL/uZWP16cbIER5SfU9MggisM=;
	b=Cpy73zj21NI/tZ87i1oX3x85Ue4/jDsL+9/2QPQB8Z1ViBtMnb9mFlLrQOCs96DY
	0t9Wqm42HFa6ylC9O198NHsoEDFG2S66Fb73yFrGI7XzedzWPIRsdPRh4tByolOFfjH
	v6H7ijrCDWz2lslm5XWD2wJz1EifsXrpF1EwwhXA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180ce260372-f9ee5eee-6b21-4f7f-93a7-0e109c9bf5d7-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: d1de898c2596cc952bc35e24ef67a8d18dc18cdd44b5df2796c681e935fb8316
Date: Mon, 16 May 2022 18:33:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.16-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652726039
