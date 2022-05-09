Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A65357E
	for <ddprobe@lists.linux.dev>; Mon,  9 May 2022 05:47:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1652075279;
	h=To:Subject:From:Message-Id:Date;
	bh=DApAdOKS0beaRnsDU2XaXxtmgUfZwuV70/YeYEorq7s=;
	b=UQnsuy6BilCruqb/NiOqchFB6AN4XRzt+6DV8UKATYUUCW2AenMywGc/MOGeAbpx
	Iw10/m9Door3FgdD408HMy+ZmwT97ut45sIoYTpyUPmTSoPRuVojamPQcOc+eBFTE8K
	sR3eKhAIhFybwRXfiqj6c7svqDAvhCVOmuJhJKCA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652075279;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=DApAdOKS0beaRnsDU2XaXxtmgUfZwuV70/YeYEorq7s=;
	b=EuhRBCrxJ4rc+tRSed9zq3g/spXfBYI+Fy9KduJqXJlshVqge/6/EMcG53tcKdRk
	jgZt4wcHwEK4r94FEYeHmGdgNuKDFxbi422oEs4Zp3hwXPDWkHWL1u0wgKIO9fsPdDk
	5H0YtKMIQ2d2uTdeo/dm8xmMxMqglnoX8p06K64M=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180a75c3011-d7f6be47-1998-4ac1-b9b3-50a29541f3ed-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 1eac39ec55fdab58536e139d8071600b97d0bd5a4d80cc69e55e92334534b305
Date: Mon, 9 May 2022 05:47:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.09-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652075278
