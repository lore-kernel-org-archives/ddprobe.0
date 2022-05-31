Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F03F17C9
	for <ddprobe@lists.linux.dev>; Tue, 31 May 2022 02:03:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653962639;
	h=To:Subject:From:Message-Id:Date;
	bh=ZvfAm1yaeOrlMmu22B6KbhrxTJa+ExyegmzU1hgmHpc=;
	b=ELzB2dsIz5wWFc8BlUHFGO9Jg8vr8+nA1jQuUd41o8y+sE/n1bid6U8rNWbEXsdG
	OWiEJrt5TK9E23hEicViPwuWeuGmBZaatBRaDUF+NbK8T6NU+7iz6Zg+BB3lDA1N5WT
	e6R0Y7rin/hpaXy1I1O/72DlWCNxHOggpefrnXd4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653962639;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=ZvfAm1yaeOrlMmu22B6KbhrxTJa+ExyegmzU1hgmHpc=;
	b=MyzGAIyGKU6PfP5uz7u2XoJYboZN6k/R5bWf1N86xMpytEwb+joxAvoziUxi7o5p
	/MK+vU+/a5FsN9nVbJjTuT7V0srU/Ahe1GuiVzJ/FVRcDkHHcgg9OuxCyMAI2PZydgu
	zpzRK6zIKFJqp/jlBhGBH0GIltMDxmf7BIs2mexw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018117db07ce-43fd2cf1-4cbb-47f4-944b-acee9a3ba653-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: fab87bef5e486e22ea80a09841d34561175b449dbb63f69385a2d596dc5be17e
Date: Tue, 31 May 2022 02:03:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.31-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653962639
