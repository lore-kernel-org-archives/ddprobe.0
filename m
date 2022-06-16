Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 053517A
	for <ddprobe@lists.linux.dev>; Thu, 16 Jun 2022 07:26:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655364419;
	h=To:Subject:From:Message-Id:Date;
	bh=kyDEcko+jAKFHkw58sTkAdba1XybK0yvweJiyOia71w=;
	b=c3pV9CKFmXN6AZ9qzYY8ey/LDpOADV6Z7WL1Ij7n3w/z3QqQnoUpwzU3Kut/iizb
	YPyW220Ni/W2Ke0enECtxeejRAmSaVZPiicnMJDJFyNUp5ULHnI3GD6v9PtL3rvawF8
	k1d3faIdSf6po4DArXicr+bY8eBKDaloK3VqzOkE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655364419;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=kyDEcko+jAKFHkw58sTkAdba1XybK0yvweJiyOia71w=;
	b=WvKU5L2I0FAcntJf7Tj79YC/uBpPGz5Y2Nf9dzrkH6uHvQxLSMDfZ2wrZI75bxJ8
	gScdhx1MFDgi/MdOMnVa0YjFwiBC99Cg+QbDnsHamy38Due569kC0Xc/Ui1WxDnUDVR
	oHgwcfXNfJudXjSkeQHZihIcFiRdsodgkxRDtYrw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101816b687ecb-4a22e343-bdd2-486c-bac0-122928d71a36-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 68c8b26af2b571ce7c0eeb99d2c5d537562a04e94796b40715cfc396382ab4b4
Date: Thu, 16 Jun 2022 07:26:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.16-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655364419
