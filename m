Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D6E14C60
	for <ddprobe@lists.linux.dev>; Sat, 19 Mar 2022 06:51:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647672684;
	h=To:Subject:From:Message-Id:Date;
	bh=l256LcdEgcFKu7X39Pvv8VuDztcDfNUGgyoMCzYXj3U=;
	b=HTsLkEk3qxLrexVd8JZJHXoYqKpa3QEH9lwJqcSQYTKrYOvcnjyFPMqtKJPKP+df
	dp3bN6dSd88SScSJArJRIpm3+Cuc2L9EfsNueR+oRY/17hv2uvh2OMgKopR5YsQOylp
	/8WYZUngPcIu1TObQJ/MZ3+y9n1b60XM4blUMvJA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647672684;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=l256LcdEgcFKu7X39Pvv8VuDztcDfNUGgyoMCzYXj3U=;
	b=KLxd2KrDl//E/S0u32Xa0K70UrkDnbWf1kVsWGqSqI/9eBeWmsFLoiUxVqwqTtSl
	YI9O2w7HcPc866zczQ8oR5tuN2txIfDBzZM78QUBYt4uNMZbDS3050pPNYmFYTFibIE
	W0bnN/onvvd2h/gzdpL9eKj5bTi0G3McgmH76E0U=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fa0f1f0ce-0367c0ae-7aee-478e-b7f3-2d29f6ef43b3-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 2619dbd57b71ca4c7980a9c31db80458593c5b0e23d2bd62382aa335a428733d
Date: Sat, 19 Mar 2022 06:51:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.19-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647672684
