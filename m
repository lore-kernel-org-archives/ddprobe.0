Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0BBB07A
	for <ddprobe@lists.linux.dev>; Fri, 13 May 2022 20:39:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1652474399;
	h=To:Subject:From:Message-Id:Date;
	bh=dO0qvvZ/udigfwd2PpLnmDt+EimOGdQ8Bks3BVR5LcA=;
	b=F3OjJM9id2fn4sYx7beKi5gLoiTflq+jz/1VhLTRFR+VBrjN1NZ0omnuuhFLMwMP
	Jx+I6OPu8Fdg+yuIWCTvif70Na4GmlkZmpHUdFY4YQx1n6uPxrrUqNIPHbnE5eWdwNx
	2ZE3zNp+7ZV3rAhPmvrl2oACTr2ankVw2lQJAay0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652474399;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=dO0qvvZ/udigfwd2PpLnmDt+EimOGdQ8Bks3BVR5LcA=;
	b=gG97zZvAzMbWyF70re5mkp0jKeEbMOScIBf4en9jm6tTN/kNyNSEU/PUjfJorxSw
	eafeBxjo18UCqDdfHFSXKbKWd6PgFAf3MXlnlX6adsjmv+KsUencE/3iGYcWkFer7fe
	RGX0JfpFH51jrigH9YV2CR7YhTuvf/8+8j7M9WA4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180bf264a48-c563ecb5-f2b7-4235-85bc-bc87c400a581-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 804921830159af072f980961bf3b96e2547055d0b1eaa84ea59d8bf31a0e9440
Date: Fri, 13 May 2022 20:39:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.13-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652474399
