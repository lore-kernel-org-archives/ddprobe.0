Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 842C32F2E
	for <ddprobe@lists.linux.dev>; Sun, 27 Feb 2022 03:21:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645932084;
	h=To:Subject:From:Message-Id:Date;
	bh=CKeRIu0QUmKLGLjcTFuL8gcqDjyXqK6yA1xFwcXoAxg=;
	b=aIwVBLfFhVNlyhmPCujV63cOrbjWda5GKDn+KQYgaLP9WYWOEitP3uJmOoPcXY6l
	Pe6fUufmGA2w2S9t/xVOtpjQEs9XakpGFNyAzOHwn4US0kqVRnUmt/MW0kYJfLA4KlP
	mKi5E1xsLWyEkL9RkD5qSGRj/GucVlqC4Dboe/N8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645932084;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=CKeRIu0QUmKLGLjcTFuL8gcqDjyXqK6yA1xFwcXoAxg=;
	b=fRaYn4Wumh2kSvuMY9BCL1YOpuIMz3SCB2rSVy2UiD3Su1tJuHEEF1R9AgzYd5fX
	k3LbFsnvDCiKZChQPV1wJGiGVOxa3cO1onCwIF+lZHMb26zRT4ZI15OInFgTmLYzqC7
	ZViO71/k18Xc+K7Tj0Q+ghbh0Ii/ieLtqEUq4DRQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f39327e3f-0906ef4e-4cd4-477d-8a36-a471617fe38f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: f8aff2843c47bb2e3f3adba6cbfa8275aaa25ee568cdef19be138530221e462e
Date: Sun, 27 Feb 2022 03:21:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.27-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645932084
