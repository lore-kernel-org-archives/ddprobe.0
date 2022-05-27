Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 151D17C
	for <ddprobe@lists.linux.dev>; Fri, 27 May 2022 04:41:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653626519;
	h=To:Subject:From:Message-Id:Date;
	bh=Jkea+5AS0DJxkwj0Z9z2F+yCV1Qgdlu+0Zzj7BTv9qk=;
	b=acFyq1/7ltFZcfLX8LEKC5DB9Ybg6PW8AIqMifWlgzJyMewzT2wY9W78UMR+72Fr
	yAH6Ml3ypjr3UvcOCmIwVpEbXOxKNLmKlmC+ZQMbRIEPHp1AgCrQCXnaVEQ4hTNpvnP
	9wWw2AnR0fIeHVVnCjcJ9QnNNI13I6S7ianHRLXI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653626519;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Jkea+5AS0DJxkwj0Z9z2F+yCV1Qgdlu+0Zzj7BTv9qk=;
	b=KXEyzt646e5IWwbqTey+rlAzTHI0M1AGrkm4SiPWbVSsZFrtALQvCSN5jRxyYbB5
	CRPRmhhz+7JMqr+PokZRK4GzwksWvLFyTaSzA2Lpq4Y37z9fNgEIcsKfnh3SmxSMMu8
	s/0XzUtLUByHtZsCFLg/76xqJGTnY3QXSPdv270k=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018103d23f41-12d0e540-4794-49c9-b905-1cbaa66e3d4e-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 371021a9d1d1d01378dfcfc38dc6eef7501ea265f44f3055725c1604290eb150
Date: Fri, 27 May 2022 04:41:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.27-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653626519
