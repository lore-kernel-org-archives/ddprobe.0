Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 646BFED2
	for <ddprobe@lists.linux.dev>; Mon, 14 Mar 2022 03:46:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647229584;
	h=To:Subject:From:Message-Id:Date;
	bh=fXK0NSq6XVaA32m++om+BMO02gPv+Krb3amAUlbA29M=;
	b=TA+66W9IfVKBSCm1y6jVo+f+vaOt9oUXvY5PotNT22H2wgG3wpIHDFmqQkZwL8IN
	1vjQunQJWL5/TQk+NGlkQ+LQyEQP+F6G3Vqcg84kYjsooU6oCYDlKT7GYm7fomGMHyH
	OF97aC39TRrujHo8HRKXm2xemmnJv0q52FnIKEP0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647229584;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=fXK0NSq6XVaA32m++om+BMO02gPv+Krb3amAUlbA29M=;
	b=J277igRYaVKHslTa6ASvx8CFw9np9vNU1dATJZY66a0BQce93Fjh2mql9VAD/bwA
	xn+2f1zy8nzGiWs9Nvy1w/BTydqtUmKypCXvCiQqrPH6nHuYCqUYqDqRf5Tu53+KWGJ
	SiMeNY7y2KbC6zzGwmnbRt9aXJ2T9Bs242VMZmiU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f8688c57d-76d9ec82-2ca3-43d5-b38c-824a51069de5-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b6be2af22a65a2dc5508b097b6f203afd3f583b20377603a607631905d482767
Date: Mon, 14 Mar 2022 03:46:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.14-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647229584
