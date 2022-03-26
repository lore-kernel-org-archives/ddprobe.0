Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D5B957E
	for <ddprobe@lists.linux.dev>; Sat, 26 Mar 2022 06:02:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648274578;
	h=To:Subject:From:Message-Id:Date;
	bh=oHgGn1e/hf8Zy65mKCE81QGLHQNOPp1iHzWHgtkQ25U=;
	b=ZTuk/OnPeu/RFpt+FjpMa3B13UttsFnAy2LkZuJtCdzwXHo4NxhHpR2dA1hrk3wY
	GV46a4AwS5zAHsfI3d+vvrtbk1mmgu2kWAO0Ee7gmTEmKtaAB1ZPheTDmUaq//kaZh4
	xeBSKsM+dad/Jy0mJc6Kvrkk0TSTppsVzlfZLOEY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648274578;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=oHgGn1e/hf8Zy65mKCE81QGLHQNOPp1iHzWHgtkQ25U=;
	b=G0lIVhNIJMdevKjKKN/um1r2nh04RzhdnuiPEgyQWQWgihuQQhiPHySBEVVyNb5k
	YEdawp0tenVRD8u9Gh7o/FeKBNX/2hprA7rLckuFoUUK4JjaYezV8RnZ5oD7ArA76YZ
	dTlVweLbijaiLGopje4Mu+23s6pvmzfaZyWM3SPo=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fc4d21b61-19393301-412f-4e78-9374-68a0fd796910-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: cb278b11a4aec76f45e5e17b8e3644d66f5895a4515d360dcb0ac645983bc1c4
Date: Sat, 26 Mar 2022 06:02:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.26-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648274578
