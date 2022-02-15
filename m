Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8A29681D
	for <ddprobe@lists.linux.dev>; Tue, 15 Feb 2022 12:51:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1644929485;
	h=To:Subject:From:Message-Id:Date;
	bh=vLPPhXvoC3DmRao/gD4bCcOkHFYkb+W2SegnpX9tI+8=;
	b=IsMjF6zFSdqhDzfKEy/YNIR8S3EP2xi0AKuGxxuPFioK/DwMBP1gM9FP/VsF485z
	pLByu45QXVIePZC+bh4IFY0Z8ZWGGccXLMz3fGCGCYwqLQ4jaLWxb+IfYfODWMUKdWB
	Yat83X+Tmtskowhc2tlXtGOKqNui32Vd4IUlMt7U=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1644929485;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=vLPPhXvoC3DmRao/gD4bCcOkHFYkb+W2SegnpX9tI+8=;
	b=GW1QPqwPWUwiAoa4o2tba9CNdPQIgZ/weVozkQlYdmSLsDzHggfDQzPPbYhFV+M7
	xvu+HzHqb70aZ7bBGBZucDhe1K6dTetE5gei01pKvx0WGg3YxtnoL3nfiJ1QuVTJP1C
	jQ+P2IpRafNzJ3gyBM8Q7lfhJpzgG5+GgPhkrsGY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017efd70085b-c26847f3-a7e3-4847-983e-ec100ee34447-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 6addefadeb1811bf11da8742dcaf893ad519f4344d768d17f4ce030c2f096f9b
Date: Tue, 15 Feb 2022 12:51:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.15-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1644929484
