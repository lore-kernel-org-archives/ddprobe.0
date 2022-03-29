Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37858257F
	for <ddprobe@lists.linux.dev>; Tue, 29 Mar 2022 17:51:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648576318;
	h=To:Subject:From:Message-Id:Date;
	bh=+L2OfGpEpFJYLzeV4+XvMX4JUjQFwRyJrAI9fi2g5Zg=;
	b=fct+xT1CQ22rRYoNH0Aa/o4vTQaJZ/SxgwIh289zAdm5zu9JsDqevdioqRGlbCVD
	ARSi0tfbmvS7fM1TmQKxSQDvhGTCHK9lS/fvi2T0PxQcRKIe24yAPH8p4yOygcWTjoO
	+OabLx2IYKzLfNUM+r6qvMjxQwNvNeTxxQ1rclYE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648576318;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=+L2OfGpEpFJYLzeV4+XvMX4JUjQFwRyJrAI9fi2g5Zg=;
	b=f++BtnN/DngNStqQxR6JWAwPuI34j6y3GN3fAJ63o/K1V3A0qikEumkMlETcuZzy
	RDdcFscImBC28mM8TMdSpb2N52JikMTIGAapSbO9gMAf1oTCG4OXo3Xx6dROxqhC9pQ
	AgBMEBNXQa0SVVuE4CypFNIc14RFD0KmBtiRa+4g=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fd6ce4b31-88279978-da4a-4c82-838d-9e10457c4490-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 1378f88a51298447141f1d12b19beef8cf3bcf1663d33a761246ac0733d4eac6
Date: Tue, 29 Mar 2022 17:51:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.29-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648576318
