Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C964A15A8
	for <ddprobe@lists.linux.dev>; Thu, 14 Apr 2022 00:49:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1649897398;
	h=To:Subject:From:Message-Id:Date;
	bh=ReSdy7YyqEfzdPz3q6w4BPbFhgPIwDh91IaOK3QBZ0Q=;
	b=BAdweXE6P6v6uGkAE1kTYJRfoZPAJYRZjXT8ChELKPR/xOyZTYGrFyu8+pCrt9MW
	5aJifYN5pzu3FWKGaogpHvvFnkuGy8TF8KyInvJzerO40Dcps0OFtO+BCmdCWBF9jLN
	Jg9tTf9kXHqg14hSNVdB4ilOtt9re02rk7xfNczY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1649897398;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=ReSdy7YyqEfzdPz3q6w4BPbFhgPIwDh91IaOK3QBZ0Q=;
	b=gTrgYngvswPT9XQNyF7IbgCPSdHmw09BgHyENNuHeB+s+93JMwTlRAEK2mIV3dt9
	BnOQVTvs7LoqMt29suhD9IcWUHzrBeis4k8KE4aHaNpDnDksGv0pfxT+8P0UAgalKI6
	AVau6+7sYF4JIEEMZNsL230cQOwyMkr6JrBwNl1s=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180258c5ffa-4f9e5fd6-8c8b-44d4-95ed-e078f103badc-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: d02982ed7e1451b6e106d9b6c91bcdf64cde468600704cd03b005cbb5b4f1131
Date: Thu, 14 Apr 2022 00:49:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.14-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1649897398
