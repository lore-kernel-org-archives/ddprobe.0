Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 061927F4
	for <ddprobe@lists.linux.dev>; Fri,  6 May 2022 09:34:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651829698;
	h=To:Subject:From:Message-Id:Date;
	bh=F1IWVONRvXsnFx8YBGbuA0kA2T4gI2FarBU+AVtca0Y=;
	b=KjHkys0gSyP9s2JIEDmdr3BKYhcd/CKmTPSNcrDhDS1+M93iyyIV4clCnh36OWT7
	2xCKD31k4c9yPDf//v6tAlZwK3QGR5Ny1qBDaZLlOIDhyrOgUE7MRMXEpp6Q2fEBlYY
	RQRGd2SAWgfcdBcbxRLCZE/8twqS+BC44llto3f4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651829698;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=F1IWVONRvXsnFx8YBGbuA0kA2T4gI2FarBU+AVtca0Y=;
	b=VSKpfj2kiOko7zcKoIt68/PQfJdkB8l/kGdZXMQSVbeM1yjoy50P1Q8KuOuFzxIK
	7zMYACPAkxhF1/N1JKeZ0RaclLQmPddEzYG1ldm6EQCWIIsgjiiH7jk3hn7tyjZIldn
	tmxw8MvIRMHSG36zUNqKWzoTdol5+4ADH+zdAr78=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018098b8ef21-eeded48b-71d9-4eeb-9c06-eb9c72aa7b33-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b7649e5c25c949be2da2de861d581d2850c2c367d4275d381d8151cb0c6419ff
Date: Fri, 6 May 2022 09:34:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.06-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651829698
