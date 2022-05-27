Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 173C01FC8
	for <ddprobe@lists.linux.dev>; Fri, 27 May 2022 18:45:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653677159;
	h=To:Subject:From:Message-Id:Date;
	bh=CDbC0jRLNrsHfqWfTE8NFxn/1ETIpXeNwM1P8cXyzyk=;
	b=QrEUcTL8yQnw+1JdG99IgW460nHmAUmOt4J8jo3kmp6Vmomd8+BdTuZw2isq7ltg
	JvXRtKyGEC2zdpPCX3vjo+h9QzAo4JAo4UTjGAHfHtPtgvTJIoEstjmQg1vkWV4Pd15
	ifIs6ebO77isfEHbzOGbIZOsyufJrTFPsQigE6uQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653677159;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=CDbC0jRLNrsHfqWfTE8NFxn/1ETIpXeNwM1P8cXyzyk=;
	b=KEsBUgfpJs8AOUGieku+MvNcYuB2gBlrxnwqEgZ8TrOIdmP+TSRQK8U7NXDLU3lU
	EuMgOG3X0PhoC/EdVrtoHu2MUnGCpJbHRGhY61fGqaY/sUVZ5KeBqjfqqZP6bEaMq9s
	hLhZlRN/7CFvyShiXmVeMFpa2Kx4vu4eI5L9//wQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018106d6f388-34dfa96c-06c2-4821-b108-3162c32d1d1f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 2ed1da35ca98be16b0a513bfd72ccb824a6136f818c789d8bca8c94c5f443d44
Date: Fri, 27 May 2022 18:45:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.27-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653677159
