Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 07D467B
	for <ddprobe@lists.linux.dev>; Sun, 19 Jun 2022 10:06:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655633219;
	h=To:Subject:From:Message-Id:Date;
	bh=IYJteC+Lo5mIZzEIl4tDchVHgLInhHJWc9JofVt9XKI=;
	b=ZbUzQvWf0QxctG6HZ7ZAEJPv2PKyeIya70uMHAUyuuomi0dzrSyjSvmWgAHKG1vX
	ZSfyAw293ciZZA3NLLvuBtBs3MG8mtk0+ZL0fA0dAf9TGS87xrngBBbCvI+PEt7JZRP
	MG+PD3Z7Mxxgwcng3xmURoVKwXiMwpgDCRLZaBLY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655633219;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=IYJteC+Lo5mIZzEIl4tDchVHgLInhHJWc9JofVt9XKI=;
	b=P7MQBd/Qslz97J/0bpSIkA4ZgTOtwiodYY/L6DspXAnw8ALK9SRqDvLfItqpMW/+
	9S1rFXIr902rDDhvhYZlCvVTnlim2951zvaQryDjFBrGAxitlHMYcORsHERH/plBLPv
	4y+eLoXuK3wLl4Pdd1I4ZySSw675E5fGS1iEuY+w=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101817b6e0edb-8e4edb1c-e645-4f97-8d9f-496c40c764f5-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 9a2c3c6cf964515bfff1c3cd671adcf4f148268e38323ac400b5e1b866051c05
Date: Sun, 19 Jun 2022 10:06:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.19-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655633219
