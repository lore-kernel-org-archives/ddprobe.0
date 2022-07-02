Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 127142F29
	for <ddprobe@lists.linux.dev>; Sat,  2 Jul 2022 16:36:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656779812;
	h=To:Subject:From:Message-Id:Date;
	bh=D3ItVS0nG6fAHfdwzjdeHS3S+kLO/j8SCWZ5YtS7G3Q=;
	b=dA1lYeRPCD7ooT5soVn2RDYmp4BCMBWh0wqV6fzyPUxg/tPB1LVXf2Sp1yqPRyUe
	2hfPATA0hSIZ//peamZy0dw4se/nfrmBQ2qJmbCqDI0dY+J/u4XeeGKdF1FquMgvYAs
	g5jkaDMY5WuajPzyESMt5xuCLGc+cKkLXWeyefR0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656779812;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=D3ItVS0nG6fAHfdwzjdeHS3S+kLO/j8SCWZ5YtS7G3Q=;
	b=GUb45PnVQpIA5S4OFjo9J73joKmw0oXG7oh6b+Xf0LG8W1+MhycHY1bdAwKWjf3F
	+WqidmUY0VamjwcWMIamAXr+wPEMkcyXJvYdvxX32flDIBv/UMSUVgD4ZjufPzBtp3K
	wzavPi9iK6/xuMIAIX5Pu8Cw4iuBbpE/ELR3NdOw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181bfc5adc2-cf436a03-5071-4191-b376-dc92d6740a52-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 6ca6d1b6344ef07764374377fed83b7878cc02d8407d673e90cebc3ae128eab6
Date: Sat, 2 Jul 2022 16:36:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.02-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656779812
