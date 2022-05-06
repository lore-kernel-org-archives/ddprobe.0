Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35CF2651
	for <ddprobe@lists.linux.dev>; Fri,  6 May 2022 10:45:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651833958;
	h=To:Subject:From:Message-Id:Date;
	bh=8CxuRHJ9QLSCDHhMakq1W5rUAe2aMxK1rg52CbBt3q4=;
	b=B3Q7xgGseOvmOyDtg0S8OzXDKlbiEfiZdeB1HDbWHwEn6MrYzUCu87+nWrZ6itTm
	dHKng9LnmjgNBWeO6b+X8DZF7XDXNaEH16LgmJNeV32b76jOuT15DcXbsuJQPmxJJEc
	bgKOUhZdztlxFNaUu377xOI0fPMhIWn8YrZyVXrU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651833958;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=8CxuRHJ9QLSCDHhMakq1W5rUAe2aMxK1rg52CbBt3q4=;
	b=duBGWU1q8EFvsCIiJqzkvEcxHUvkCeKt3CSZagmV7njyQF1TAyFAjiElnsRBQml+
	BLp3jy8WxB56x498YuB1Fc7aBMI8HTz/DG8TrdxDDwmCVFKLqc/4LRttoivSurZOusN
	8eK0sIKMba+CWG+Q4HQwuQy6OTrptaO27KC57HOQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018098f9ef51-09519538-169b-4471-bdad-0c9e45276a3d-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 1984322d54b60ed3efe34ed6108417b0348650bc816d168ba68e509355db406b
Date: Fri, 6 May 2022 10:45:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.06-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651833958
