Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 97B7517D2
	for <ddprobe@lists.linux.dev>; Tue,  3 May 2022 06:22:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651558979;
	h=To:Subject:From:Message-Id:Date;
	bh=Vhntpk+BgiMa+cal6B6JglNYQSHw/M/qCikxAv/Pzfk=;
	b=JjT1vb+KLVKRr+cTjrJ+YDYfXC4Gg9dO8ssFga1o5vg/KeR22bHdmiFrTv+vEVSB
	owW9glOerfFAyielt4ywtz4Jr/Av0rj0SxqoW2uNV/MDoHOaUMEza39z/RA0Y2tfPj8
	K8npLLO8PpEGurm9c9SO2UJ+HVBg+C2HE0Tflkdg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651558979;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Vhntpk+BgiMa+cal6B6JglNYQSHw/M/qCikxAv/Pzfk=;
	b=REFLb5L8Jeg/KifCLyKh2PlI1lQDEemGgIk1iQPbCJgFaSuBWIRL73G5LQP3Z7Kq
	B+QuLY5yA36qf3T6fI+U/1ZYnlBlhGv1yS47E2PBOb+HNKgue6vpkXyBKc3PSvPNGNE
	+Y4qgaaTsUVAIKr9L+yIt2TxQXNkMe2CmvRIHebU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180889612ee-9e1ed10a-56a2-4ead-add9-d518b8dff95e-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: e841b085b4bf31f711426b83775915394d1ae008a41514104d37ea28a9c08691
Date: Tue, 3 May 2022 06:22:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.03-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651558978
