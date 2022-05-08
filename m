Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A89877F
	for <ddprobe@lists.linux.dev>; Sun,  8 May 2022 08:53:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651999980;
	h=To:Subject:From:Message-Id:Date;
	bh=SS4vW3uQVCNpLOs+a63qnVniXypiG5VqvRb/hRup7d0=;
	b=kfSiRtzoRh1zcOg/46GpqKBpVtJPd5elgL5c4a7J0YknydKQnhZFtvKVnYfBGjmR
	J65Y3w6KdmsYGlOptZCJR0rb99HfzNP7SoD4q3cwNKfYIAcKSfJ3T5ul7rqyZY/MnHZ
	BRUv1S+zgvFhke6FAiSRMX/Wd72bT9eEb9m7XPCQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651999980;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=SS4vW3uQVCNpLOs+a63qnVniXypiG5VqvRb/hRup7d0=;
	b=bwTlnMbgPl0+oLc83neDZAyLWwktFVyoex9pgS/9Oy/kqwbhTriWIMbJjmCGtGiE
	R/w7/2wAuZE/6d6WhkGix9lmXQGkQC25ntpM6Qn3IksFLZ/ER0XLUeOW512Qm3CrFtX
	kyMGbVigWniuHIlg7/O1KyfKz+7I1n1BopllknNc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180a2df3355-01b15a71-f8b2-4f2e-9e91-902ddf06ad4f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b018d01baf74baa9d2e7d64e1b620a664328a382a115758d30ffa0871ba2f0af
Date: Sun, 8 May 2022 08:52:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.08-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651999978
