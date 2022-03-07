Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BB3FF7E
	for <ddprobe@lists.linux.dev>; Mon,  7 Mar 2022 16:41:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646671284;
	h=To:Subject:From:Message-Id:Date;
	bh=acVqJr5TaFzqs7V4IK4ot2GUwG6Cx8bkOq/kvs2JqQc=;
	b=intNe3wVeuUDhnZtdWbnwOKCJtJkY4hreAbP5QQeUv15xvD2ZmYoLLkrQuy99MZ5
	aJbqLE0rZ+q0gsmDcdvIAtDMb06+ECkB6fNxkEghYdq83w5mdoKEiq9Lt2g2Pf59g5+
	0h4+BP//p84lt1MZx1OSrCz0uLgtaoo3WtPcQXf8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646671284;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=acVqJr5TaFzqs7V4IK4ot2GUwG6Cx8bkOq/kvs2JqQc=;
	b=hX3/iRmSC34/T7F1DAQ3n4g3aoTrOeaM9CkZ3xaqjIBGRRJF6hJQA7oFJwhMCzE2
	uQ5/48ENP/br/ZmTpePAM6n0dNbalUq2C9lo+0vy/OL2YVoQGoQfob9noywvBNsEBlm
	iOpeJO7JfpPuyHKKDopqo2Z9TYdDHEyl8A2qOjNQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f6541c9f6-9c7566b9-b635-4b1d-b13e-4f78712d2c58-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 8bd92e447a01ea7e495c1ed59b584f2dca9c3347f1d5972f556a5f0d5cc750a1
Date: Mon, 7 Mar 2022 16:41:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.07-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646671284
