Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3BACC186F
	for <ddprobe@lists.linux.dev>; Mon, 14 Mar 2022 13:16:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647263785;
	h=To:Subject:From:Message-Id:Date;
	bh=NEx+nQ86b2zmkpmdx6TB/N8fFb8n3/njLXmY+eznZ3I=;
	b=GGk9S/xo3GRzzjJCpxN/06Xq0nrAWjde3XfZDR/JOdEkzFj5HLvwwCSXW8i96z37
	iyy7ZbenF8tB/dMdNWMH+R3/bzWsnvRwfYzvOb1Txl8k0Rn+J64KOCOnGzMTUFEF6TO
	uH5gPNe74LNF7b7bAbTHLQ5Q1fVh5Qx/nRs82RdI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647263785;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=NEx+nQ86b2zmkpmdx6TB/N8fFb8n3/njLXmY+eznZ3I=;
	b=hyU3Xoz9U0TaQHNbu8Bbr4890KhOPfss3dWbXbfFzyO0T90t5CAuaJVNkNbtpfM2
	XkISUP/CnVqVKhOtZENdlyDaNR71wV1AS2emxlaI/5+9jUMh8VaVqTD9qD6Fup8pd2i
	ddqBjPPaj9md8Q2T74RiMG2vJYdLNc1YKGDwUim0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f88929fcc-165944eb-42e8-41d6-bff1-0718900b35ae-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 8204538a34d07937c0ee72de70983838b0dc60911eb7a0bc1f321066ecf2bb7c
Date: Mon, 14 Mar 2022 13:16:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.14-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647263784
