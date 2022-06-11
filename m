Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 170AD64F
	for <ddprobe@lists.linux.dev>; Sat, 11 Jun 2022 04:07:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654920479;
	h=To:Subject:From:Message-Id:Date;
	bh=Bu9mmhvnypjIk10JjZuKxR7Uj1IlUpERUMwAvyaKzrg=;
	b=gngTyeGE4zdXyus1Ni2qtv06c7igtRe562lr6lV/MFLuf5wgNkiMSqBz5x/80wlR
	Mclm3r4bjD7DFGnOOvNwP6PwadNcPVyM0Mr8Ohp2v6coFEIsuFAPjKTE4mWI5HWzm03
	1ZCfmZDOW73DoMhrw06cOddp7gFzaur8frPb85go=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654920479;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Bu9mmhvnypjIk10JjZuKxR7Uj1IlUpERUMwAvyaKzrg=;
	b=DosiKJQj5URI8U2axKYZ3jhiSNu6vzmi/mHapG0IXaWcSAJqdnWnk0FXR3/eeU06
	QmPfyBhxlbGDCKGxGwB9PG/ipiQD0tH0EqEyiRWonQOX7oj9QlIsCMRiVN3l1rl3Re2
	UTgz/zMFWJeawPk8H2VPnu8v2om2YtCnSEelmbjU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018150f2820a-2eda2ccb-d16a-4f1c-a4d8-7d35bf29b17c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 01dc921650d19ef6c6750a44e70ff4356eafb47072300bf2cbf2a367b3e8bf88
Date: Sat, 11 Jun 2022 04:07:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.11-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654920479
