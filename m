Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 668AA2FAF
	for <ddprobe@lists.linux.dev>; Wed, 16 Mar 2022 07:36:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647416184;
	h=To:Subject:From:Message-Id:Date;
	bh=u9i50lMhuJGosNNuTM/TzbGV52MGAxPhe4FLVIAtk38=;
	b=JXt+hK1yt58n6oF7z1CrZ65N5xqJJtNxSyhwBgPSklt9VZljt6DeyRNj8d3e83AH
	dCcnECSBnHQ75CDIz1lG2vvvclpHKc30nHhdrLgCABt8Dk9B7Yz1csiZnmNTyviulBo
	TgAI08e7t5GMlG4G2wLQNwmyboLxQ187XkNYaQVQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647416184;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=u9i50lMhuJGosNNuTM/TzbGV52MGAxPhe4FLVIAtk38=;
	b=ffROhRjOtxL8fiUJMxQLoPOUX5RDyEPnRT41narDQvOWrBNCup3dAumxt6Ws5BBK
	LU/O6RIUDwO+MVvIhWzI6bexI87uwD0HU0vMmaIX58WcGnqqmxgbHmKxZYlfPSmPK0U
	Gk54eYF3vASWqleE1Kd17DIgSX/ByPGeK6cH/L/U=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f91a80fcb-653a0f3b-7cec-4788-aa70-a35f23e4cf55-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 6e618f3fdb2d413fb375e29f1da198428f382758e3b41862e5fe8216a3ec7599
Date: Wed, 16 Mar 2022 07:36:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.16-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647416184
