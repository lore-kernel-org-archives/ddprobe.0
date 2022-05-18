Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D804A7A
	for <ddprobe@lists.linux.dev>; Wed, 18 May 2022 13:33:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1652880839;
	h=To:Subject:From:Message-Id:Date;
	bh=1x0oppy8kdZaPoy1LctfYBTN1slUfv0rVgHlXJONP5w=;
	b=jOWktqqAnHMvNd+2sTxzSsiOPyc15Ti771nsW+XKIx0NMAH2/soPsptkXHMd8vhF
	+t8U0zQen4y2oXbnapRP/fPN0VV1hIyNBp48BpY0/uZZADkAdqYP/zoX2jsxqkgtySC
	JZf7xhUbudg0A480cLuT8vXn98C1LBSyDU97ra74=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652880839;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=1x0oppy8kdZaPoy1LctfYBTN1slUfv0rVgHlXJONP5w=;
	b=gBeXeOXltBxqO6LvFKKoMFqlutgDNJJeOfb1lqzFk2sz2qdhIJcAoz65Dlcjt57H
	37vOtIZ3rSQ/1ed4BDXQKLOYTdB7SamRdNeHLbDr6Z4QwmPMNYV+fow/RqJbgJPs+3b
	DV70xnC2LbLaOfIkWyFnyZNUQlZM29eIfSePbGDw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180d760123d-a2745ad2-35df-4eac-b60c-b00ae5e9d802-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 06679e110a3c53d57bafc628f4367c10c359f14989d64310d376dcb9e4185f2b
Date: Wed, 18 May 2022 13:33:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.18-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652880839
