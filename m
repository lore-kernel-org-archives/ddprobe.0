Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F8FE2CA6
	for <ddprobe@lists.linux.dev>; Wed, 11 May 2022 15:47:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1652284019;
	h=To:Subject:From:Message-Id:Date;
	bh=68eqRzVj8Wl9xzT9hA7T+9r5vOwxICWkOvrruM3ssdE=;
	b=XNSfC7UiGPs24bdg54DfY1YZXE9ifILeSxK3VjpMtqJubvDNojsx4+jO4vKl2yUp
	cHHPWjya2MIyiPH+PMqcAiR/IHivdMOGJ7AA6cuo53kTP+/XLSj4gYMlJOXPLTkwGk/
	JTc5WiNb4KvcLaWgcZqc5niJF+NASTkV4Fgfcs+Y=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652284019;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=68eqRzVj8Wl9xzT9hA7T+9r5vOwxICWkOvrruM3ssdE=;
	b=fzrJ0ueLXsqSd5PLBdcoCnROFDOc08kquHBCSxubYek660veDSgWefU2ijEVzRtO
	VxQlcY0c+vFX1U/geT3cnHt3dvIzudCIaMsRcPGHwWJR9QGcoIgPbghLKMnovMu1CUO
	6kncPG4Z5/Pxrjmnqakczs/Pvk6o+o5Qz4HdDC1w=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180b3cd52cb-dfa4f02d-bbce-4e7b-98a1-29d8621039fb-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: f11e5f6ca1c0736089c2af220e89b1e59df92f177a582826da25bc0144298128
Date: Wed, 11 May 2022 15:46:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.11-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652284019
