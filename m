Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 57DD97E0
	for <ddprobe@lists.linux.dev>; Sun, 14 Aug 2022 00:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660436452;
	h=To:Subject:From:Message-Id:Date;
	bh=sBZEnRPy0CA9RLFDa9yeO8bTOfbmOFlg2IDdjh9vW1I=;
	b=KNsldp4SxSkIucl32cSbOSiof0DCHduVXjEhfupDSaa8C9uHShQ1EEMQxKVBlOhp
	o+jIPIXzOVudR0/92ayL/DVmHvvRRY1vyZO3ImHm5v8W6RQ5clkoYs4/KQP44Vt+NDj
	/K8p1Z9nahFKFm0pvumBtECRCuSy8gN914Vesxu4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660436452;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=sBZEnRPy0CA9RLFDa9yeO8bTOfbmOFlg2IDdjh9vW1I=;
	b=bgAizm0P6Rtjsr+8yEuk3jlQGVYMAdXRH9MpIHjDbQsL9mFe2UCc8042gUaEExNk
	K8TocW3rRxmL452thxfRLiY6FK4iDiLyh2rn+7KQbqrnYt0x/k20znKPelx8J6uN3XO
	ZSOU1JUiMxVAn1dLQfYrJxhvtofKecIu+DQdkv70=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018299b994f7-3e83b3fa-cadf-4086-b09a-b5b4a2c5bb84-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 9d185be6aa2e807e80c52656b1ed3a9628035c954034eece12ab50634900f7a1
Date: Sun, 14 Aug 2022 00:20:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.14-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660436452
