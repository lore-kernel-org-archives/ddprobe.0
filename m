Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A16E81FA0
	for <ddprobe@lists.linux.dev>; Tue, 10 May 2022 02:04:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1652148240;
	h=To:Subject:From:Message-Id:Date;
	bh=Qxx/VlaJBGHgmpmmr58g6qKtGNAFo1mR4Q1hmbsamPY=;
	b=He7UydZ79F7L6qcWMGWSKFA5BVY7UsspVOruj4tx1OolfMKLhQPvDgtPmNR0q9X3
	qGlTFZ1idx0ldxMIbXMkT8BhE3gJjxTvJ1FiD33ybewcGFubFm4EQhIsH+9PYIMLiYs
	sADdgVjlOB5bEN23IIgSRBA9Kh3j4e06K/oBAhBk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652148240;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Qxx/VlaJBGHgmpmmr58g6qKtGNAFo1mR4Q1hmbsamPY=;
	b=esg6v1Kf0Pa7tQZQSUXH9iGP4aC9Vmj4/x49ymKRC4FQ1wx1UFSAvMCxt6KB43he
	FMr9tXMC4jHHP5SaaoC9QqfWRH5YAJMMIlNmdBR9PazeZ0SdVHUolbl7mFmxzcnYxgs
	EbJr1J08KE5PznUzZ1TJ67cGP2S9ZmFcFR5jVedg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180abb57c01-ddc27055-07a1-4138-ae28-f9e35771d45b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b1813807e2043e167f25be6d1fe373e0bf6235ad35741cdb9b0db6886032d671
Date: Tue, 10 May 2022 02:03:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.10-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652148239
