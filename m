Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D7FC2563
	for <ddprobe@lists.linux.dev>; Thu,  7 Jul 2022 17:26:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657214812;
	h=To:Subject:From:Message-Id:Date;
	bh=TQeqVzmO01S7leTs28QyVlYLv7eFZmCPwA3cwh/IZuo=;
	b=TRDJO+DhbFCma/mad+x8Chrh2M4Iy9mYiG+1U6WvvIMKl9adKwiDKLn385Dwz4ei
	vZ12bmlS5x+mx7Ci8CVprb80qjiAG2u7Sg39R2DdPB5wa1B+27XWKqg36n4YmB1JI21
	YmtcnKDfiFg5Wfenk44j/5Moq6RIb2mYQia2vvEs=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657214812;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=TQeqVzmO01S7leTs28QyVlYLv7eFZmCPwA3cwh/IZuo=;
	b=HDCxY7aySTLMgm3vSnA8lzAZdSXIRiIZm7nRQzjX8nFCqiQGVkdMdJj18C1zegKB
	Kzwa+HYKp3b4GMyhAbZq3JY0GRZE+ppAEJfn86VWio7SBeRuxdMCXkTMh6cvCdLYjgA
	fN6mi3o2N0hLQqCxYAonLPDYj6gLqGv5MOECb1dg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181d9b34083-d194d617-de72-4199-a857-b5348786d436-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: eb328e2b2d8431f05ffe0fc1c5dc365110a4a4f0b90413b51365e3e10c9be0d0
Date: Thu, 7 Jul 2022 17:26:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.07-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657214812
