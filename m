Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 13D807A
	for <ddprobe@lists.linux.dev>; Fri, 22 Apr 2022 04:45:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650602758;
	h=To:Subject:From:Message-Id:Date;
	bh=VxOrOOdY4BCVhwidbErBzVvHU/2M7NrnOT5waa86xic=;
	b=AL5+xbNcpvu6ej/uWoiHZPjiojpx7GAS88+spvHECTnOHZcbZ0ZuipIt03rc2aY2
	pJPFkQprO2GGSrJ/T5iMqnRieQXKoCVndWHiCvmN+oThqrISmYCkjljShBxFwvIKwMd
	3jACrGSDXQZr9gOB7dbnYrumcyjmOhRfe8yaXuU0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650602758;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=VxOrOOdY4BCVhwidbErBzVvHU/2M7NrnOT5waa86xic=;
	b=e6miT43LDVZxk46iiRwXTNVb/koAEv6GpN+PeIMezXjsUhNTVwDCydspX3nb8a51
	X1IbnpDMMbNapvMpB6o8+gNkJu6k0VEeuf5u7V+h9/bltU8v6g09kT06z7AMk9Pyfa8
	e+1H5hlmJ8k3c6GgIjds2HbyOfNQPgG8opFBIaDI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101804f975068-90a13b02-fea5-45f0-8fa3-a2475846f4c4-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 21699218eb8638346eef714402a98edbee2b1179489b1e1b9442365078491a7e
Date: Fri, 22 Apr 2022 04:45:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.22-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650602758
