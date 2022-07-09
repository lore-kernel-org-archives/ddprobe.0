Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 287C67E9
	for <ddprobe@lists.linux.dev>; Sat,  9 Jul 2022 02:06:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657332412;
	h=To:Subject:From:Message-Id:Date;
	bh=z9OiZz2mFfaJoQpSyysSwsBkTwecTfUGbZsFTy93EDs=;
	b=f1veChWGFsO79cJbwfwfLVtu1W3/UWj2fUo94D8tspmAvtOCFlv7hd2SRaY/avcp
	3pcRrcamCF+P+tRBlNNe/zgZW1zO8VMhBY01tl5NIz9IJm1U9+NgMwV/2DVCzgo5PCg
	4aOCR9tgKiUEmPIw44510Z1R6ZQ3dNgIy0zaFZpA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657332412;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=z9OiZz2mFfaJoQpSyysSwsBkTwecTfUGbZsFTy93EDs=;
	b=E1KFAaVKkUrkgrTn4s6IMYU0i7nbMfOXBUwf/j0FLzcxkCclRhKzKXIcvcNgw2LN
	y2kQuOcXHaWLRDuaPNEqWBw0Jt9WLtMfPDA78sl6ZbXNt8Zbc1Q5aDqE+QLel7Ejyxp
	qna+pZOTo5Q/LoFT6UPdUwh3YFk2j6ZHYLnlMJaw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181e0b5af99-5a621235-3c11-45a0-a56a-c571986a133d-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: e52042c441daaa9d3f732965b961da22dabeb5615d528888c3ec05394d02c709
Date: Sat, 9 Jul 2022 02:06:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.09-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657332412
