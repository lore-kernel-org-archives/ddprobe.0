Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7F2DE1B73
	for <ddprobe@lists.linux.dev>; Mon, 14 Mar 2022 16:06:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647273985;
	h=To:Subject:From:Message-Id:Date;
	bh=2mOjXQjpU4Lou83SR+b+mQLpjc8fp96y56vtAq9fMM0=;
	b=YeP+i3pTdaHfuT7oC4sqQ+LTOws3ZRXL7ZY7MpqDke/PgNESGENJxAN4mpqewVqv
	eCdKmV+WUeyQbeTUf26dvWhrLCDq7bexZP+RwRSf/psAblQ+F3oDLIAX71CINqcAIU9
	fTu1e/dI5k9Sg1vVifCXHfxqFEV0SS3JYSTubsWs=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647273985;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=2mOjXQjpU4Lou83SR+b+mQLpjc8fp96y56vtAq9fMM0=;
	b=NpGmnJWQgjqepDIbyt94Xspl1E0iy83CwG+p8ppJGuGy05FQNAbbBSVTuWAHNwL2
	jtXRLUkLIJZ59YIZrzqm8BgJYg7JhpbiA5q8NFau3ZsS9HzE4/LBhHNqPwBWCacyB4X
	17S3u+x2DuQLFVjXa2hsOLWbBHDiuX27bd6iynW0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f892e42eb-5d0fa2c5-f361-475b-9290-92df6dd1dfa2-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: e220d19ea65dc2fa1ec2e78eb703f8d0a25642cc98ad543f916a981bd28929ec
Date: Mon, 14 Mar 2022 16:06:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.14-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647273984
