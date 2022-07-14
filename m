Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 15C932F44
	for <ddprobe@lists.linux.dev>; Thu, 14 Jul 2022 10:26:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657794412;
	h=To:Subject:From:Message-Id:Date;
	bh=OVgLx3NZRdXlm46CWzdsEI2u93x03yptvtgDUY1VOzg=;
	b=Vwv4DSG1MtId/DD/CMVVf09TBJkHVzdn8PaT+FZY1C7dSIltGeQEfqL1sc9xN+iT
	BHQVWEZuWUCC+fLLUKYZyPXpLoTIPyNH7c4X3eYxqd2iBddmdQKUu6dJTeWp2G0en/Y
	/5yQljcdFcDEqqyRmH2x84ZCMqOl4686uH1Hd0d4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657794412;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=OVgLx3NZRdXlm46CWzdsEI2u93x03yptvtgDUY1VOzg=;
	b=XfIO7J6CSd2DHBov9H4ESUM+F09IhuzU0Vj1bF/yTCN8H27gefj0swJIgddRJfxk
	KJDlkWJaBcmlBQUUgBQl4+ALFxhvjdO+Z6RYbl6UHlKxeKL2a12z8RSOAWZuw61kIUl
	oa/DwhoEQudTsZsmOOMjuHtlVDYfDCTkdw3mWtdc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181fc3f3eef-79bb131f-c511-4cb7-a27e-4a844d946cf4-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 4a77a5028bb9cea21acc7a5286041fc399da197c80929c9d926ac25b62899d31
Date: Thu, 14 Jul 2022 10:26:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.14-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657794412
