Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7A78B4A0E
	for <ddprobe@lists.linux.dev>; Thu, 11 Aug 2022 20:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660248652;
	h=To:Subject:From:Message-Id:Date;
	bh=7HwPaFaqPh7sIUKVqNDXOTKM7ovNkQodejDsP3fHgb4=;
	b=dPLHgxhXjav5lB+qerAAOvqvQwVNc4aM4k/GISXASo4VuW6qhkRChG4//mIfC3Uj
	urm0QMWDOKJ+e7ZocHGaRMWfkglkZXQtDdiuEzACSVmltH3HCfGJz7bgMI+Bc+1VquK
	voxqIUJ3t486U3YuCkFFXxJ7GzyzE+zl7Xi5nP3k=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660248652;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=7HwPaFaqPh7sIUKVqNDXOTKM7ovNkQodejDsP3fHgb4=;
	b=fiYhDC6Au7nj0IgpxuBlQIBx+vfUuLaYzAULWc+gLo/fCEFPmSnjoRy7xX+bm+6s
	+iVB0g1KLmjUEQvMbOeDDBquENs6sL9jJ+mCwYtD5OiC1KPlvNeOHj3p/lZg9S10XC4
	3RWMj6770ec+HXpt3yuB97M5GOLMNvTDiQI6Pb8I=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101828e87fb41-1dbd38f5-56ce-446b-9431-45b84f1ec774-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 1cfdfac6492d4ae6b31898729c7c5f09c674c7431c3ff665b88614aa68c8208b
Date: Thu, 11 Aug 2022 20:10:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.11-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660248652
