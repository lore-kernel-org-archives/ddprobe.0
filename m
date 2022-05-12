Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 243042F44
	for <ddprobe@lists.linux.dev>; Thu, 12 May 2022 18:34:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1652380439;
	h=To:Subject:From:Message-Id:Date;
	bh=Xcemty5TQaRY8M+/XUZ20BC/vFKqQCtQniFomkOuuDU=;
	b=Ldl+fgt/u/76OKlYpmr5OguuE66jVeqbkvj+iGNnwtJiyFMjJnF5/gCgeCeCgaNp
	VBWlzZtfwfUyIRrCgOpn70O5krcLxGT1fXJJJO8xp6n8ZcDPnOfLSb73SAz0Lb8Vr1R
	Qdkt8A35usKyEm2fEibnkL5EYRZal0taGJv9jygg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652380439;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Xcemty5TQaRY8M+/XUZ20BC/vFKqQCtQniFomkOuuDU=;
	b=fRpJUwMSkQ95EwxW1uXb3sQnpc3cTHTI5NPL7kbLpuRcNSPM8Fh48XMi87S7IltP
	aPL+/9PLm8591Fj07Bmf54bnxTvk6QBCPWq+uXtROd/0oTO+zh0M3T5dpVN0saWC1v5
	rlJAtX8HRIEYpts71KPaJNiZgvc1PXCnz8legTeQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180b98c92f1-774d3654-f477-477f-a941-9da73e5b36cd-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 4d1740512e650bee0240794b4a18ccf5247ef8b097f8c80b26aae7327e989f01
Date: Thu, 12 May 2022 18:33:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.12-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652380439
