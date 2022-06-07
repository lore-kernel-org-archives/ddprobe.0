Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A23117C6
	for <ddprobe@lists.linux.dev>; Tue,  7 Jun 2022 10:29:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654597739;
	h=To:Subject:From:Message-Id:Date;
	bh=Xa90UW3sJJqrzngT6axXzxennXjJeUMtwFAB7TZJ/Xw=;
	b=atX2LHszTf/zYsg+6KuJokTFGaO+mY9bRRobjQCRQ3inRR+77u+CeLZbG3dyA57i
	xNHOvcf4OjhLkymEpTU2oXZBkBN3dx4S4CvrjWuTd7FpgGerpvii4SUL+k9Gf2g6K6Q
	cNphCnv8rTCKdSmZAf+0nM/jPE54A+45Nk9hlNes=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654597739;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Xa90UW3sJJqrzngT6axXzxennXjJeUMtwFAB7TZJ/Xw=;
	b=G0Mb6/ssWGN0ucmGBcO+G71zuCD7tz/a2zji9Ey5QX8baNwjkhTD8m9NMhp9wigw
	fB4hQiJSvMA9q1w8D6dTuyJ42Xb4uRlASjEzTc3FOmKpqJjrRyXV37gh1G3LlS8GcJr
	k6eQkIIHNG1YY7LskjyCasKlSVFGQmRXuIRLCTwI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101813db5e307-24d6a0b1-842f-46fc-b350-6f5760c5ce62-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 02aa3ceedc8f891bc54e2d3a3cce0f64b61670be21511f4daf6d52c20ee0283b
Date: Tue, 7 Jun 2022 10:28:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.07-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654597739
