Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D1077B
	for <ddprobe@lists.linux.dev>; Sat, 18 Jun 2022 15:30:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655566199;
	h=To:Subject:From:Message-Id:Date;
	bh=dsjgn6acY134RIGn8dcs3SEJrmqWpd+HZuJtwzssTBo=;
	b=V+74xZUqS3tXlm1zuqBXLOZlPSuZqOO8ARs83mgX/xAnyv8DMQlIw0Vl6X8RSlq2
	qIoagseRi08lKWpb5RMyU+6hujuO8/II/9/ZE8AyCegn+yhJVuXSpSonCMnG5N5Yu68
	Ym/KHLy9VaBLr8MaWQYR2BixsCQrlZeYSN2lr/lQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655566199;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=dsjgn6acY134RIGn8dcs3SEJrmqWpd+HZuJtwzssTBo=;
	b=foHEP+4Rk72XKKmRdB1yvbcaBBC1tmUGucE9XeWLgMgOTlZo8O9K3CfEi0X40+f6
	HvhaCm71emFUGFJokgi+arA7BDtu8SwOkP+BLW0k+/OQMyQGoMuhJkQuzsUZxKeT7Nf
	Agbwb028JlFXhe1RE2CA9gW3krGtARVvL56TFynk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181776f69ae-ebdc2e4f-5282-49e9-a9fd-83de5bdc4822-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 24a177957904aff62a42b00ffa1f90f34098e6c0d22a39363528ba9ef5f37e2f
Date: Sat, 18 Jun 2022 15:29:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.18-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655566199
