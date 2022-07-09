Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E95FFEA4
	for <ddprobe@lists.linux.dev>; Sat,  9 Jul 2022 11:26:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657366012;
	h=To:Subject:From:Message-Id:Date;
	bh=8e2AZmyHQCd1z9kkHM05+xN1qNaBagSnRYv8tfn9Gjw=;
	b=Wn5pii6zneCETujZvFoJXgYrCyWOzMX2oEpCZgNiax51Wbetvf1iIeUfGapkKevH
	/IevDP4QKFQzmvgzOITCuxAmsk+VPFQeybvzs+zekR0Fp2i6uH+Jmu8SH8lk8l94uKi
	wBm4OoWqQPczQc6Pl37ERJyFOwEXjfPywvFXkcQU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657366012;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=8e2AZmyHQCd1z9kkHM05+xN1qNaBagSnRYv8tfn9Gjw=;
	b=bZK2EwnopFFFREfGNyjHlsKQ0WQ9Rx6IAMToe6iFjDs5srJjS/zbNE9UNwomAdhb
	vvr6ywcSZuLRfbR87mdzglqGP1TC/JGwprhLf4ceyQiGIDl/sJcGj4YcqRN5xykLe31
	sFxppGmXjOoaYpx+65bWNKPcJr7s5gPFYQ7HlkYo=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181e2b66164-9d24a3a2-f2bb-424a-9ade-ff39c606ccbd-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 634731886de94289ccabd14eb528e8e1416125d2418ec782e81d843df82d5559
Date: Sat, 9 Jul 2022 11:26:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.09-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657366012
