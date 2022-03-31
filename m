Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 249BF7B
	for <ddprobe@lists.linux.dev>; Thu, 31 Mar 2022 08:09:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648714198;
	h=To:Subject:From:Message-Id:Date;
	bh=S95PnjPFmCNlcxYZt+2O38KmyiAS24EBWFIFcbd/I4c=;
	b=XntvbMGuAFrHwRCmwcSi/6uI6HQoXp+uSmcAvmGSsPdeSO6AIuFyMhF2/GekCUH5
	+Ksk0+jQc492NadjrLHZCXxe75Bj77OqS/S00kd5RuvzYHbVJdp58KDnJfBFIHCHOAs
	Hwlnx6MNqlR6tlYdh1JsPPN5f2101I4VbPdED7Gk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648714198;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=S95PnjPFmCNlcxYZt+2O38KmyiAS24EBWFIFcbd/I4c=;
	b=J2CQgKTNuMJS6Nsiob7Vl29VMACt1GDlPnwUSqfXA3/KBdf8IzVJlEVStqUejUxT
	wpzW2hqFCnsUf1ri76/bO8EkFvCpwmhw6k1jruJSiAIMDMdJl1fGgdjQvcPiiYbYMiv
	PY936hNW4S1miAzbSGPcQG0vKP/xpiUejgtQDEiU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fdf062d30-bd455987-9a47-4ac9-a37e-a15430083909-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 1ee88e5e8f1d3939f65f0e459881831c7302cc77e733de5ccbb0e5a6d131cdab
Date: Thu, 31 Mar 2022 08:09:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.31-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648714198
