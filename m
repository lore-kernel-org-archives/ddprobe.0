Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34F5D15B9
	for <ddprobe@lists.linux.dev>; Wed, 11 May 2022 07:20:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1652253599;
	h=To:Subject:From:Message-Id:Date;
	bh=cYflYwNKtvMFFxGDqeW3lmQa2SDFiGwvAHWF5zeRs4g=;
	b=a5KnusQMiDWVE3eahNT/qPdIs+zDZ8Wngk1zxVwMwFW9MTpmnTnG8OTAXN1ASjV3
	lWUD016lBcmItfRnuskpNcNPQIMBuVsiTW6cSmedYOffUefWWg6oyBPUhMi+YIMv7WU
	/6jN/qFWkF18Y1zMZv7gWBMknMEkliOrBrCQ/dLg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652253599;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=cYflYwNKtvMFFxGDqeW3lmQa2SDFiGwvAHWF5zeRs4g=;
	b=M8st9/fEW7HJeNx9JzElzaNf9zJkdLpaO+bY4NQwjaYLEsswCdkgvo1oiHJNl/fe
	XfpziF5st8XlVxF97CpBRlU5HexNLI9K+YLkPmFMcQ3eLbwQTccpvXD4A1u+Ve+gSfb
	WicBcnxWKBLZrWUV/Ots18f20Pd1YHI+fvd0dbss=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180b1fd2644-21d687b7-97e0-4cc8-96c6-35941bb19177-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 5186216a1e058a4932ab93fc4038325977d81669c48f5c03e39b95a6b7fcf85e
Date: Wed, 11 May 2022 07:19:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.11-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652253599
