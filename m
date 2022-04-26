Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 707D27B
	for <ddprobe@lists.linux.dev>; Tue, 26 Apr 2022 11:04:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650971098;
	h=To:Subject:From:Message-Id:Date;
	bh=Er21hqhKhNXF5erf82RQqyNt3CNWynyh16Y4T+fEtg4=;
	b=l8kTuRaq+QwaylOuoQq0GFz+Dwv2IlNvRDwjH8rvlwYHi7pSedabxAFs7Ns+2lry
	ObrMv5W720rH1aQXbmbdK+bS2IUEwVwP89VpmBfoV0O+92SZEiyCbFulr1/sNhCiJA0
	CqP2felOQ2Y+G9zWlPjP7Ftp95HDaJfeNB8OTGNo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650971098;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Er21hqhKhNXF5erf82RQqyNt3CNWynyh16Y4T+fEtg4=;
	b=J+GyzvKMzMGMuWvb7LNgeKWHf780XREyYXPq6RCB6KtxTYREAChD2J3xYGFXxkui
	W5/zrbwGAPGRCVDsJMLCPn4kybNwwPWGZgVgqBFQEGgl+kt6I895gn37R0VHN9+rHnk
	urZn7NR56N7UmX/v7ErS55OcCkxz0/9znDZI/RiM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180658bbca6-bdbfccd8-915d-4498-aecb-910dc00867a1-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 415e1dde3a5b8bad2a09c991926e467fce39e6ef634ef8f2496ede7712e83195
Date: Tue, 26 Apr 2022 11:04:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.26-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650971098
