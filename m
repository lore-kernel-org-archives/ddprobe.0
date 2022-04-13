Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 10CFA7B
	for <ddprobe@lists.linux.dev>; Wed, 13 Apr 2022 01:03:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1649811838;
	h=To:Subject:From:Message-Id:Date;
	bh=t8q5fAVzhdmwUySh+MHNakVgyQKXEgLgG9ALZ/IBLwY=;
	b=kDDt15a/XqBmIHbTegXf86hP/Nm3LbmexZP1Fmh+XqAlrMijpMp9sPh53gJUVM72
	GEIQMbEiPdX4d0yKNdv3afnmj81HuGft6DfjfOJAMCk9FzGj79uhpc6AdvftPLm/yFx
	vl+dDHaOvR68xXuxUpFpoQzF8HcVmJKjwe7sZh5U=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1649811838;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=t8q5fAVzhdmwUySh+MHNakVgyQKXEgLgG9ALZ/IBLwY=;
	b=BzwwDXbvMHLdFYqo6UtSZuQbEH0IsIEsGM5G0rkOPWK27D+ASLBJqyQId93IBIK1
	Xvolk5PI7XcSKkSM7LaFJHSoePrcNwmGpDoNsMo1q0QHaTXGCg435oW/uigMUw9aZ9B
	ZVY/qT18zHhpsyTFfF0HOEhQloovArgwLrfPUiRE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101802072d53d-a7233569-b43e-460d-a5ca-e848387908d5-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: e3ad6be9a81e23c29d9bcc1a6001e03b38a87201757feb248d699562dbe605fa
Date: Wed, 13 Apr 2022 01:03:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.13-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1649811838
