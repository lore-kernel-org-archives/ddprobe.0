Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8548B1B71
	for <ddprobe@lists.linux.dev>; Sat,  5 Mar 2022 23:21:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646522484;
	h=To:Subject:From:Message-Id:Date;
	bh=SWTRdTl+gl/CkLI6N63Urttxm2v90ZwRDfbf8FOTQt0=;
	b=b2oyInRIJFfIlYb6jFYIGb0W5Sz3amjvLTerkB4IlY67zJZyH8DRA21u7KeS43Sw
	kiVLM9NqsX2EV6s09HJ81pdIHePg56NnlPD2XPfRFtma29Yxa+MSojG4ENSmAXvoGTg
	7TjMKMkBxCQMkjhnkuBA/ahBCqzRL36k17o/slAk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646522484;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=SWTRdTl+gl/CkLI6N63Urttxm2v90ZwRDfbf8FOTQt0=;
	b=PGwtFrrGr0IcumVFi/LskLAtPX72KZAKvGF70QxDF7OxnjlQLQ6su/D7Yt5SE/Vs
	BkaWta2NaNdH9yXj+MqA5bx1YaE8DLro9IfZpz4U8qj+qaVqNelyFDkkdqN+Y77Nd4P
	XqYnl+WxtMUxSrCI1zh+Hak/E/8G9RSBkuUhKjLk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f5c6347f2-3f9bffc5-a56c-4f4a-961c-4ed44918edd7-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 9ee71f6bd83943bc183749266498456f21ed6c1b0b77315062b26e730f1bf839
Date: Sat, 5 Mar 2022 23:21:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.05-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646522484
