Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0B56723B2
	for <ddprobe@lists.linux.dev>; Sat, 28 May 2022 06:58:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653721139;
	h=To:Subject:From:Message-Id:Date;
	bh=5nXnVB26pHElabObJ9SjgHBXHLN+eb1iaZz4purmlKU=;
	b=Kfw1VbluHPPrJ9xX6OM8B5l5vEC4p4KWBLRZiFpCFn5npaTiiyhz3oqoYyknHUfq
	BYo4Rp/+H2vqepwRIQutalaZj890kTq19P6PLON4iY5RSCb7C2dQ3FKPcQRAnM4UJob
	6vZHWhbghol2AAZrLvBGF4TmQrADlz7GHKMOpMRI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653721139;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=5nXnVB26pHElabObJ9SjgHBXHLN+eb1iaZz4purmlKU=;
	b=J/zt1deahmtxzlvJ/3pKpXMB9+LtLJck11mUXaZmr7ukkA/Np+1JZwAVJEjsq0lV
	DO6l1/nB44jf6lLB7v72Bemk9wvTMJQLVhySf/D8Y342hxmdPSnwMOx3j1qv8/lI5SV
	HAri+oKOT8lxqyO2j0Z5S9bF0NPilxS6VzMQnKnc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018109760897-7264b5b2-e0f7-4f4c-9023-28abba9b87d7-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: c0ae371570b28d94ad10b8bac1c18aa999ea8a2e2deb19ae6852f6559c51c426
Date: Sat, 28 May 2022 06:58:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.28-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653721139
