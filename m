Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 93FD97A
	for <ddprobe@lists.linux.dev>; Sat,  5 Mar 2022 16:56:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646499385;
	h=To:Subject:From:Message-Id:Date;
	bh=ccUJTDkT7bMztGveqpe0qtCKvQe29CkJLPOCmM+WSbs=;
	b=RzK+AUPfrz7YR3ykGS5/xxlac0fpMJUfIgFkPBO4SKC+RZPL4T1xkN5pJamdQvQS
	AFdVCL/zH83vd6yRU6WplhCqqLh1PcvX+sMsGWRPhEekd/fmARhP5NU9wCTvoOEQvwu
	jZELm9aTvvHZFFVINhAM2pjE0O24vT2Fzat7VEWs=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646499385;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=ccUJTDkT7bMztGveqpe0qtCKvQe29CkJLPOCmM+WSbs=;
	b=fjqtoF1H0ghorMxmAp2a1MVkFEGl5KsBih0qDdXT9x0yBCh/IshHh3FDdhrIYC1n
	0nBVpLKoxTgBJnOfwfRNxYAoNT/fKnm/UVzgib4ZrX/n1py43CkFktuK5NfOXbv4zhc
	HezIxACeU7HAhkon8nsCB8iGAEdO2Eh4v9huA/xI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f5b02cde2-a33b2b0c-4d85-4243-8527-22362bbde430-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ee3e49634e347804251ed50944401cd7e6f9787aa3a94782b0fc7a6e95ff5796
Date: Sat, 5 Mar 2022 16:56:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.05-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646499384
