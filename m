Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 85C617E
	for <ddprobe@lists.linux.dev>; Fri, 11 Mar 2022 06:31:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646980284;
	h=To:Subject:From:Message-Id:Date;
	bh=xGV05HmdsPxD81Wyuqr6DXI2t2PpGNW5SGSGk8RQnfY=;
	b=MivdcnLdr86pmPxEpDkWI+QCP5cRVsyxxwr+YFjzjuLHvwShSSIdvsFmV03ZBgxW
	yPxsEu5WO/ofwuNtOgcsXExj/EjIGaLn3s3j1GLLwNg2Dh44UwHl9Lw7m/hhDgSDh9L
	dxC0pIQ0/qAt4/t9A7XdQTwBoX+zU+UYqLp4cxXc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646980284;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=xGV05HmdsPxD81Wyuqr6DXI2t2PpGNW5SGSGk8RQnfY=;
	b=BDd7AyQvi5KnH4PvwOKU6JijKe2e/Ok/MHWsq/jr76QB5oo/8b8K65JVFkXLtaUA
	Otku+gwsJ80hwsHqSTSZpkJeELo3sBlOaXSaOgyhljWWIiN+1BbVJkfsSzJj+SNXovG
	SsO/5DZxVO2h9NJO6aKFOf5DpLUbV4SX5XhhCxso=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f77acc142-c6927312-4e94-47da-abee-814d23614498-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 8b5ae9bdaaecd455dee31f48aeeb3696fc2dc8c29c866cc691050ac6870c2342
Date: Fri, 11 Mar 2022 06:31:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.11-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646980284
