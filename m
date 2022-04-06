Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 47F0A3D69
	for <ddprobe@lists.linux.dev>; Wed,  6 Apr 2022 23:05:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1649286358;
	h=To:Subject:From:Message-Id:Date;
	bh=s0D+EiPqIbuxldSc2167NGjKOXmA8yy3VyvhEqcKXzE=;
	b=cszQyXRSIPLwxvc+SDRo5WdK2dKXAzvmWUyd/2bwFe6YIXYEp1lm3xZifJwMOz0c
	ke8VEfsNLcAj6K8h+94VAQbmDEfEvLzhOurnB++AokfLMUlqrFzWBRNivXyijDMM1Eh
	w1sKwRAZcZWWGLbfTWx48OnV74WE1KKMgE8kiSCM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1649286358;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=s0D+EiPqIbuxldSc2167NGjKOXmA8yy3VyvhEqcKXzE=;
	b=iAek5/ktBmjpt25OtvlJdPZVRvf6BX0s6n3/q/zfuP4mMdcUvBa04P1oDAAXygh0
	bUtTvXQJvgS9XYoTbMXSDVWkzdZ2EvYuqBU33yNJqc3wszgw+ypbmI7zFDFStg5bDer
	Dfiw0S1+Oo6OQUUgmcso4cUvUWmagq72CpN4kKwA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101800120a503-d1373ad5-0ee2-4874-a276-d0bd0de2f973-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 126393f5ef0399f8b237a3d58471d01e3bfbfd1da0b277d0520bc15ebf20ad8f
Date: Wed, 6 Apr 2022 23:05:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.06-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1649286358
