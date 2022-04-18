Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D803801
	for <ddprobe@lists.linux.dev>; Mon, 18 Apr 2022 11:47:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650282478;
	h=To:Subject:From:Message-Id:Date;
	bh=rAjEM8zS7mU7gB6bRyrYP/mxBCpruXu+zT3rV1j5zjM=;
	b=HBbGiksVZknRJQ4I79XXCUmVldsEMxGbyVpzhohmMzpgBg1MGirXA7nE+I2RTz8e
	3Z5clfqg0flbmj4/1nLC3pYR3CvReB0CfUWIUvVTZwN34COJktiXhoYAz5rK7pfDUV8
	JzOub9Vq6x/oMsEeD4vxqBEQoPV/J1J9B0/S8Nqo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650282478;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=rAjEM8zS7mU7gB6bRyrYP/mxBCpruXu+zT3rV1j5zjM=;
	b=PKqxS6GDNyTyLsKvokW29HVoaTTHegQ7K3RPvKOSE3MXfcuktXaCus7V56O7BTdp
	LcD+zk6GACl1TyX14QIGlhFTntOu0VrEs2bkGTvI4xNlCJQCnX4/KfNSiVou7TGhZhE
	dvXP4tXB8orIJyhXNR+OojYb0gWx+PfcOSCz6sS0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101803c803aa1-07e4d3c3-87b3-4e5d-8254-bdf03ee27792-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: f4cd59c62736bd5ec8280d24c927f9e8fa1b7b5e1aba95c2fb0e812974ed22e7
Date: Mon, 18 Apr 2022 11:47:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.18-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650282478
