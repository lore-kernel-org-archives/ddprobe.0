Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5832D7B
	for <ddprobe@lists.linux.dev>; Sun, 20 Mar 2022 05:36:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647754584;
	h=To:Subject:From:Message-Id:Date;
	bh=IYOjOf4fc1GVrv1txCUPyGygCiCQSGWbgxyUw/8Doaw=;
	b=Yq/qWI8SzQ8EYbcril/KBeqKEU1HKK7nkcKdSecAKreQSvYOgImajFdY9ZRhV3iM
	DuCNoKi8ghPLUcb1lI70/epEYkaE2xvov506JsJq0bCWvMiq2x/8+KFgOO9cpIEc9bi
	PUc1AJYgSAMuY3UthAxRM/m4HycD8g6pqrkbNmMA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647754584;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=IYOjOf4fc1GVrv1txCUPyGygCiCQSGWbgxyUw/8Doaw=;
	b=UFIW9Eux3iKuh8fh7RNVBpR56sLjBFTEApvCewFFpsVoDMYO4kcyl4rfAu94XJvz
	RK1u4kz/AXgqyzXOkf3Fy5ltZRHc8ND8AbrZ7exn0uiFo6NIX063wxChEwOxTIiSkLr
	zUOh8NzNvwP8DzK/C2tZMx/TrH+xXTnHAZsRp9LU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fa5d3a291-7cc7f349-0256-4928-b08c-e6e9931d567c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 6a819864be7e75f7564a78194d6b8e92ee8c9f6b47242706210aaa438835a2d4
Date: Sun, 20 Mar 2022 05:36:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.20-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647754584
