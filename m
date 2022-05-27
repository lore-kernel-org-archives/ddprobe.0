Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CD16546AC
	for <ddprobe@lists.linux.dev>; Fri, 27 May 2022 08:50:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653641459;
	h=To:Subject:From:Message-Id:Date;
	bh=U5owlSeTv51OtSCe4qY3Wd09fNeF+6SfDw+PWkqnalQ=;
	b=Kt4nw5hF7ofVmnwW8P22dicSMWmPxXnZHI4LRlODVxeKPZgQq1DVHp4Xp53AjOgt
	v1Q/9CG23HZ0EqsWrPHJN2bH4hf0ExB82AK6XXhxRt2bJayd+B6VheW2ZR9VZHPR6+8
	6vWAFd1S+WussyD/p/FEbus2vfMQpRRvFrtYwEkM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653641459;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=U5owlSeTv51OtSCe4qY3Wd09fNeF+6SfDw+PWkqnalQ=;
	b=fxlnxDzB4hDOI/AeVYDtd5D0SIQBwcvu0XiovCVwt+CAzX3I1cdT60MXbx2YcIaM
	Weac7nsJgbFX5tqwARYQ+FtgcNLzTZ3//VonX3wyeJZyjru4qcPco2yLFjz+zAHNgbv
	YiAqcNMOcE1nfYPefsE2W9aDJFDnb5LrzTVlej8M=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018104b63606-ccdf1431-8e6e-4982-8da8-94e4573f9b45-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: be15548ffad9c3157d7b93bc1007bb7f6d86638d61df0db03435351a27f38978
Date: Fri, 27 May 2022 08:50:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.27-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653641458
