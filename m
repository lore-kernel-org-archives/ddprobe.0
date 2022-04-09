Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B9F27EF
	for <ddprobe@lists.linux.dev>; Sat,  9 Apr 2022 14:47:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1649515678;
	h=To:Subject:From:Message-Id:Date;
	bh=/1b7Ls3vfMlwa6QcqEBEE2JaqZCVX8XfsJyOhUb5Pcg=;
	b=eXhKZTJWC9/8MJx87cmTpnPl99EPXN9z5Gip2jTskhuGgK8n0fmN21T8jL9NUv1a
	HGP4rbJQIv+DOrgDylGoj75fj1UZ4F9rUi7UEJeGoS6nvOBA9NazRlBUcPG4XSRWKr0
	tGS6dcc+NIeBvk1GwokoPaS2eQ8DSMStr3zhLvZY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1649515678;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=/1b7Ls3vfMlwa6QcqEBEE2JaqZCVX8XfsJyOhUb5Pcg=;
	b=Dvdn0UeUH5I+LcA6GIZeDmW3rTCoVABh7bANx1jVn2d5HST/yzyblYPRY5x4FYXL
	Y+RbP9rKc6wHyvOBDta5CQE5a24b6toMGv6QvzdaJ5R8DAQgoYAg0m1q9KoYG2fhxDj
	gHbwJlF65Lsu5e4H5hFZSdvDfSbC8WmOEdAqd2Iw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101800ecbca75-febdfdfa-b4dd-480c-9c30-d2a97d5b6bad-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: aa6316134e20e44062b72c14fd5acadc61f1b780011f65d4508a8b1f7d5ee647
Date: Sat, 9 Apr 2022 14:47:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.09-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1649515678
