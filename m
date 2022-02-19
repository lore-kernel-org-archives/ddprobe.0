Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6A893539C
	for <ddprobe@lists.linux.dev>; Sat, 19 Feb 2022 13:56:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645278985;
	h=To:Subject:From:Message-Id:Date;
	bh=ZhZcHNxNlQ83zO69UcIduwyViAkfal8VHA5/RT/y7HE=;
	b=EUDG4HkUtaqtKb9rDRMtlX9Q3m2FkzRZFWpidhSW8TdYyWjoTN4VqqZotwlEIuoO
	hkncaCcuDpqp7tJbs3+2MmhIJz9Y5nedA++NHj4ToaApjE7Hx+Em67PcANnZ8m0v6eO
	NcgvynMsvKGwqqAx8F1iEeJhh5uQeEa40t6uSpuI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645278985;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=ZhZcHNxNlQ83zO69UcIduwyViAkfal8VHA5/RT/y7HE=;
	b=FeovWO3Cy4GZ6rFGQcgeleieqAkp+pJ3+iYCMZh6+pKAct3SpXk+xXAywY/hX+TU
	wLaaaSQt47QplrvDgwTUDA/APhCL5ZiL+t0tP9dV6VI0pLxH2UAF2AK2DVvx4vPyQdG
	6FO0kzrX32zOAq0uVLIHlkUygQ5EH1emQoDSWgco=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f1244fa96-0a878f2a-a60b-4bed-bd70-7090c8246eb7-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 7e7a6b3c9dbee71676d97633f336ee6566bf1c509af567e09dc13b342617032f
Date: Sat, 19 Feb 2022 13:56:25 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.19-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645278984
