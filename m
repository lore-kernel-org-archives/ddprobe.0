Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 66D827B
	for <ddprobe@lists.linux.dev>; Sat, 19 Mar 2022 22:21:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647728484;
	h=To:Subject:From:Message-Id:Date;
	bh=HYUobcMp2HgFRXESUf+rZOvbfjacfuvsPsC1SiZgsYM=;
	b=WfVvs8n4ZRWYEqqg27VH8fxT4bfa7vzPogOcbYebM3vh1j+UyxzB8FIwPWZt0DQr
	trLYPiWWgQIQxgGSy1U6LihmJLz/H3IQXYCaEJllxlXNEbi95GiGjF/5rj+3E5vUMD0
	RtAb2laKV54Eac7TrBjZiIN1hHIbv+yufwnN8lZ4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647728484;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=HYUobcMp2HgFRXESUf+rZOvbfjacfuvsPsC1SiZgsYM=;
	b=ZBxxrWdn1ABXmmhkR3qgkGkn2o08iw602nXutAlFwa/IYw5cIsWTPSeYcI4/BiWg
	M/RvloWkO5fcLEjFkrGXlC2DJrmJmFJj1V6LT8MmObHXcMG02dQE98j+qq+kj9wyWkb
	TVEVOTrt9tdcBQD2LNNRyxEPTVco9Oka1O1/AsMU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fa44561a2-08ab808f-558c-4a5d-b50f-04584f32a625-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 1030ce6612a0c5dbd1fdcc65ce266a2e2a96cef91f9095cfbebd05a6ecc9d79f
Date: Sat, 19 Mar 2022 22:21:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.19-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647728484
