Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1255C38F
	for <ddprobe@lists.linux.dev>; Mon, 25 Jul 2022 05:46:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658728012;
	h=To:Subject:From:Message-Id:Date;
	bh=OltUtU6ribshS8x5sDltR+P00Z/JYPRb0KwKFsqvqLI=;
	b=DAXk3ReeHzKflYTo0cvqY8uBvDgD8atwNUCq4rJsZUUdkXrmpHr1O9fz4Vy5JFHh
	ElI8XMydQXVZPGUYz3E6/DmZEe70XpB9eLA3C41FxlU3O9Ibnwbuak5nbIKaFcnTEL1
	o2u4IFDA779j7RHZmsVqgrJ+WXWYUTUzjpIKGYeA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658728012;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=OltUtU6ribshS8x5sDltR+P00Z/JYPRb0KwKFsqvqLI=;
	b=Sl/LOSVN3DyRC3ymKDcVMnytNSrHo3eRd2ZlBRCXdXtpe8v+Fqbe/fcrpie6xW21
	CVMCsw2QtKwrg+Z4fd5Eb+XAOqAoWw3saIb69AHFnIRmSoEIW0b8blTyXjdjnFAG9U2
	ThSrNfiNMf3lxSxLxqQL5GlMhv2HzYTrOMRUWWbk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018233e4da0e-22b73407-63b9-4865-b43d-88d932d83b0e-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: f6827f586727c082be9d604821d68384acac95a5ec8f0f7b4098f4cd636cc7af
Date: Mon, 25 Jul 2022 05:46:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.25-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658728012
