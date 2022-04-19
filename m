Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F68AECA
	for <ddprobe@lists.linux.dev>; Tue, 19 Apr 2022 09:53:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650362038;
	h=To:Subject:From:Message-Id:Date;
	bh=BuJ/DFZR30Dzq8un5sqhw0kNTso4fU8ITsBdT7kw8wg=;
	b=dhjCgBuW3F6v1q+sqgjRLGm7myGJ8tICzVy9Iy1Ydw7rvBb9MsQ7omlgojMurnde
	Q+gzN4QBWlVoy6i0B1LBfCfO0DRJbiY5JSrlIxPk2Edr86ItUxVrYjuLEzl2u7vdWCU
	gvTi34NB37uHl1ay8LDALFZ0YIZBGN/d1FTI1Vew=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650362038;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=BuJ/DFZR30Dzq8un5sqhw0kNTso4fU8ITsBdT7kw8wg=;
	b=FR7AOfvGLmRR6AgkC13zjhghBm4t/kQx4SlnNU+1YeQz4g3OfIKwkDMqJkz8qvrz
	OvjqVTxbr8hfRc738KeqTUiVsY31xZzr/UfCtzIMCCNrje/VeCF35GGBbZwEZuAyK7O
	0AEJG9jcNcj/GSnjztKa2gba3UiITEU/oClQjfnc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180413e37f2-0e1090ac-3b08-464d-8e1a-a18b519dec2c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b47fd22022bfeca9be12db585ae0023c100ddfe8aac3b712a2b545e22be42514
Date: Tue, 19 Apr 2022 09:53:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.19-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650362038
