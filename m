Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 07B9A15AB
	for <ddprobe@lists.linux.dev>; Sat, 21 May 2022 03:23:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653103439;
	h=To:Subject:From:Message-Id:Date;
	bh=K/sz7dD8X22opZaqEBTeQFePdxo6UqtqSKQAv3r65Ag=;
	b=lGhaKoVAE076ujprXXby1n8igZTcMswvgpF810Axi2kt6cRHHS0ZYAfACVBmrJoW
	pMfUV4r/5+JzWATl0rcFlHlboSxdrKTQWjACbNwdGUSEuYfzEPu56tek7TS31d7Ap0t
	XMebLUqkQjuXKRfPTnMgr1TIcCbZbpj4xUWidv3I=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653103439;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=K/sz7dD8X22opZaqEBTeQFePdxo6UqtqSKQAv3r65Ag=;
	b=KU5Ni3daRU/yRkFbX5JLHcXIFajTNQ9BB2vc2S2cbw33wZAkrJCsf5KmeZqTaAPe
	UtV3gTJtv8qnKSZdEw/F1WLeTwQ5CQB6b/jdn387p2/qBhnPH/X2YqL+vdxlPDTPS7r
	7Llmpjb421DcQBU5+Z9xSNJR1tNF+CjPffBKRpTE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180e4a4ad8b-892c7419-3a3a-4513-89fd-e805e6e19851-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 4252d3870ecc4cc79769ac7ef6e1c5ecaf65d02aea9a2ae1d33b26f5662dfd58
Date: Sat, 21 May 2022 03:23:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.21-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653103439
