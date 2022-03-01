Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8C44C181
	for <ddprobe@lists.linux.dev>; Tue,  1 Mar 2022 05:06:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646111185;
	h=To:Subject:From:Message-Id:Date;
	bh=VVWEoNztXlouerFmZcN6sqlkzSrWeYVoOaQ98NZFhGo=;
	b=kmO8BbXN4ofV1UIwm+sAy1TGAdiEjm6uupRcpgK4qNeC+BW9b3SvRamQcsNggTNT
	L3DRWxOGzR0MQEPVBZCY3sTcc0xwS0AvMZttw4xPdcw8qhVy5FgE7vrXMT7JUrm+juq
	LCZ1OZ6bfAUReJUimwImu73kJhokO39zvZzx1jyk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646111185;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=VVWEoNztXlouerFmZcN6sqlkzSrWeYVoOaQ98NZFhGo=;
	b=gvv0rvwgnqdJq3C29XNDXmILyk194IyrlSlJG7VCBYJ0KRenbsoAHfPO3LNZuA2o
	84ujtvpD2JbDQ00+KXu+Gv3yCCgNZHTnYlMI+L7nr71xAjB1Jj/mOtjOHN4yqcfN0X6
	TD2+fVzoNJa6dKbw3UYOKgVlMrysxXlDndPRJMsg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f43df576a-f7d76bac-c59c-4a64-8cc4-8ecc1e4f1ddc-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b9b21d1a0dbb9a3d8836c5a304c4d1acfe542b6907234b04f6683b69c9707dfb
Date: Tue, 1 Mar 2022 05:06:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.01-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646111184
