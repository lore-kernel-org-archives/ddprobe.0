Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0783C7A
	for <ddprobe@lists.linux.dev>; Fri, 22 Apr 2022 13:17:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650633478;
	h=To:Subject:From:Message-Id:Date;
	bh=ImxEdWAPAJ83B6/JacKlaguTtGr8U6VrLGWBWNWcdek=;
	b=laEgjP72sCU0GSl+4dBkKo49WmK0fJZXEEMGf9xd8jraBuAZMN9Shwcsp+Fy0gk5
	GDZsyX2vdKlGrQwcmUqP94qJqCFvKhhesxt435OVJZuyeYhSLaNSlfMiqPiop2l4v0k
	unRUywbpTSG9iKJO56fxKy+qcnfCqA4pipgyzXg4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650633478;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=ImxEdWAPAJ83B6/JacKlaguTtGr8U6VrLGWBWNWcdek=;
	b=aT+N9O3Sdaqd7G2ApaW5og4fuLSUg9fnjFpjMQOWLTDzJd5OPzrr5BwzfK5/bbTL
	NVHyx2s/y5zBHZZIoVH39MPdJXEaMmExkuZTueKuQ78Ifa0ru8JER7CDQfvJYRA554Q
	Z23eknIfZA4g1sl5IYf8T3CHvN0CwCRBPPMuMu8s=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180516c108e-7095d767-4fc7-4cad-8f4d-86f7ec8b22d2-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 88d92b929b5683f122ad0ff3a68790e317c0af133c725f85db594b61e63cdf93
Date: Fri, 22 Apr 2022 13:17:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.22-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650633478
