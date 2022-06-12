Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D54052F21
	for <ddprobe@lists.linux.dev>; Sun, 12 Jun 2022 23:37:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655077079;
	h=To:Subject:From:Message-Id:Date;
	bh=2rjXreDuQX7EN+hy0mdeftzTmyzuwhRkQduNFgPUGrg=;
	b=VlcQsawOCRTB6oJBgYvgONMO/qnP1U0K4BBG9CcBVmmnrqaR8EiSXbihPF27YzVf
	hnQbW0uIIE3pevOHYFfhfyKLgMkgK41+xhSR5/rEJUqeogR5/gDDsODqRcs4yq3b3Sd
	Rih0iyBSuwLo6bkaV8OEsu3M4grYYQlbmjHMcZH8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655077079;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=2rjXreDuQX7EN+hy0mdeftzTmyzuwhRkQduNFgPUGrg=;
	b=V8OdaqsCZuC6GpB3i2gjYOh4nsgEfwg9SvvoUCNprH0w8VSGami875oePS7b6yvr
	+zaX9TW/5aQVCl6O2vHzamu5YIXQMdAaZX6ZetyebtGaRd+xQmtLFksfB+qLbtUe+9a
	mXyGMOpvUkgayLlYpJj0/mToMrwqrm/WnnNo0Whg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101815a4808bb-9dcdfe4f-8311-430c-9a26-a97485f4de96-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b454d37d6ca953ebb25154726e0bb02023dd600d404db12c2f665c9b8d35e7e0
Date: Sun, 12 Jun 2022 23:37:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.12-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655077079
