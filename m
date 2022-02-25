Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A4D661FBD
	for <ddprobe@lists.linux.dev>; Fri, 25 Feb 2022 10:41:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645785685;
	h=To:Subject:From:Message-Id:Date;
	bh=QJ8HqRTDNect8Z80fpjD73iwORYYhLt7Yv40meaMDaE=;
	b=C2InYb6C3dGu5zbVG6pPVNiAvxvBUfWMI/hUXoqRcAM8MYsTxaIEJ+7jzDzHEEHU
	iHybJNA3gP405OBNM1J97ELiZ/8l8Nsfh2jBzPTqbB5LbRMogTx3bnNd2UgMdEwRWGe
	I6HWCTFt2RcFwKkKOWB39eytBE5fEQVDm3Ig4h4c=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645785685;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=QJ8HqRTDNect8Z80fpjD73iwORYYhLt7Yv40meaMDaE=;
	b=lYuEv9kcGcxvLkF3hX0Dybgg+jYioH13FLXWkcZ/CKGe2JUdSIM8iT0AEiJl3DRN
	+qSBTSdHFx3g74w9SvNRen6B8UWOqnV2HlX/+aLGQ3A2jR55UdutngosAflt8Xv77yj
	ZSG64ll2GKkN7oDfOfbDh2bKC7wxpuyZ5YbwAsd0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f30789b17-26831914-9fd4-4f22-bbfd-c1d2ab2d14cb-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a95881938acad42d9d25705b5637537516715515515c032971f1a1e82ae793d7
Date: Fri, 25 Feb 2022 10:41:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.25-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645785684
