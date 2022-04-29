Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3239A7B
	for <ddprobe@lists.linux.dev>; Fri, 29 Apr 2022 19:23:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651260238;
	h=To:Subject:From:Message-Id:Date;
	bh=QymlczKv0IHvFOf9l3UN3AM+3J82dmMwrfPQgx9vews=;
	b=WwxhsbLTHeHOYcBr19VZdH5e+sx3cCSH91AOA8zPd+7QMTTzThM1N5QoNt+QLv+U
	ur1p5Nlo8UHZANJkwUrVJWFDhvZWeEik0Eaw5ZTkXoBZE0xIVOStkZ64NfIVAOYwsEV
	+EB2PxTSM3aBjQyO3qJu7D8Fh+qiVt9Mur+xFT/A=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651260238;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=QymlczKv0IHvFOf9l3UN3AM+3J82dmMwrfPQgx9vews=;
	b=cGS7aew8c+0QwmK0E9NOSAXo1bepujBEFyXxst2zGo+a2hmiQfxeasT1LxiAc4VD
	/4SMdYnU8AxmEHqSXPs5x4aWpDIku4sT9o+iZ++e/G1JvgUD8N3rk8xBZxzn8cGdXck
	RwGdOZoggD/73OyjlNtReP+0Gg09UmwAybl1AwvU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018076c7a9d1-08db93de-32d7-48da-a41e-5499d5d1adf4-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: d7682c46bffebfaaf187799867c4808db6e5ecb1d299c5df33a0c38b9c937e9f
Date: Fri, 29 Apr 2022 19:23:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.29-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651260238
