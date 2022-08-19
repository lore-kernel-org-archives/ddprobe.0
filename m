Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 847767B
	for <ddprobe@lists.linux.dev>; Fri, 19 Aug 2022 03:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660881053;
	h=To:Subject:From:Message-Id:Date;
	bh=36QoZh/vfupEv5fOnoNM2uyk9q1kgnH5/at4xzkjaYg=;
	b=bHovfqEvI9Vwro3NRXjP6w9GbVn5hgHVrPV1iJ/LPmZZm/yB2EXcJGrvxpmWVI9J
	YWMBoCFFqnugJYGEWWN+HlUfUeVLifff8MvIPEhcRucCPyn0Ec27lNpMN/KkWvz6O5g
	cPY3JUBcI1mx1L9FMpFkG7L6bvlYbHFOA551xxNg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660881053;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=36QoZh/vfupEv5fOnoNM2uyk9q1kgnH5/at4xzkjaYg=;
	b=P9HXpLFmde+w2on6VSl2reMuFxL3VuW0u0zCGgj2RmikpOrErvBl45IYeyNUAjHm
	fc1dOdBZkhGVHNwpG2PMwzaWWWvWoLhEWk85AJZSjGnweCqBx3QbFN+4gsZV+7sdNLr
	CQi8GIM+ahdbS5SNlZQ/HbpW1fBp1ixRd2K7CEa4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182b439a3d6-ff002880-7d5e-47a1-a566-936e5a2d9a4b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 3bfe4d9254de2d8e05afe4572afd7e5a77fa5ffdf1159117c262d4bd7fca1788
Date: Fri, 19 Aug 2022 03:50:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.19-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660881052
