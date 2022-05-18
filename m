Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E69F11852
	for <ddprobe@lists.linux.dev>; Wed, 18 May 2022 06:14:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1652854499;
	h=To:Subject:From:Message-Id:Date;
	bh=VRMfYTAjF7lXuuIaFH6muDGe18amR6gxQTp/ttf/xNk=;
	b=CE/tz/frlUCvQLzn/znMTEvwSQKSFR9N6nf+BjgHURgMOWp8GL7zXk4ghpiILkYF
	dilWJls2E21xQgcXU5lfJyhMRRKLk5qg71p009EdsitN61s6s5MIj1x6uPfCTH+/zXk
	YuymY4i7rfgDJhp1uEKTnSnqdR0AfJ3uFopTqJKE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652854499;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=VRMfYTAjF7lXuuIaFH6muDGe18amR6gxQTp/ttf/xNk=;
	b=QYOxKKtlKhm5QI/UTRJgDPs8pP6Pma2qJxYjWrNT+b35sGARUAgrAzerp2Oq1sZa
	UJ0YxV1Hpx4zcJvEVXnvxFejKu1WUSM9g5FqC1cN+QP5RBI2U8ximOGrpSVmpDcXiSM
	sTSfp81qnV5CA6CITi6JZzDFuEv+IesKxwP2hA5U=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180d5ce27c6-51c8a20f-f14a-42e0-bae1-3919c429fdc8-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a21cd215eeb8493c5b673b2cbde8320ec99db18baa8c9e2095cd9926cdd13897
Date: Wed, 18 May 2022 06:14:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.18-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652854499
