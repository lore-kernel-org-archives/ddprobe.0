Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 13B921FB7
	for <ddprobe@lists.linux.dev>; Mon, 11 Jul 2022 07:46:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657525612;
	h=To:Subject:From:Message-Id:Date;
	bh=p0pFSocCvtRmRfZGEt3uY6EcDRMtIeDESqAZbzy+nLQ=;
	b=QlufzZkSV8abOVYj+vjEeErYDIYymVXf0OeJlzyComSTzJCIqP/5Zhm1KLJ3PsbA
	PeoYOVfU0flXjkZ+uwB3YSXgmpB8BPFHNWmJp9h/ADa11EBrtMwhhrafM46Hyl49lsm
	PuTGWgwFFoLfre4rdr5zkjTynwSMmZZaOOrZJWd8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657525612;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=p0pFSocCvtRmRfZGEt3uY6EcDRMtIeDESqAZbzy+nLQ=;
	b=Z/XlHqiTmD/fm39NFCTmiWRHvTdHzUe1G4mE9pRiB0sR51OO+Ynr6hcE3vVuESQT
	6me4PXK+0o1icrkqASanpksjCl4RGZBhwAnmJjf1zuG5silIleg+mqPa8R0DAgrYKO+
	UEW6ARqGN7C81x+m5SWNHPFf4EyxR1Etc5Ub+Plc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181ec39aefb-75b3ec5b-3e3e-4778-8941-61d1342c6665-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 18f70c55fa9f2152c10297f1486612fc2d48fea517e0c64e38eeb540bb66e357
Date: Mon, 11 Jul 2022 07:46:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.11-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657525612
