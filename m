Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 08A277B
	for <ddprobe@lists.linux.dev>; Mon, 22 Aug 2022 14:00:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1661176854;
	h=To:Subject:From:Message-Id:Date;
	bh=iHxfVYyngcunEX8VHFe9PeQTv+DVZyQtvOrC3vnB0k0=;
	b=VK87MxLbgFXKKB4MpJE2UJMrG/FGASwLOkY+LE9QfVvEpfSY9nvm65KkgUz0tJLZ
	bA+D8wMQddnBQMnnAAGKcGXGTxhr0pHM6KHrP6rMll/PR/7n3ZcpT6hOzefC9ZQ3/fQ
	RgTuJM83EMN/iF4wEeQOGMPmEZPnS4SN6ITGriXM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1661176854;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=iHxfVYyngcunEX8VHFe9PeQTv+DVZyQtvOrC3vnB0k0=;
	b=Z2g5EEHj6L9z2VZZXRRrTwMb5xKrVxbiqjqVT9wN3vUh5UclzriVRpotLcpnHJr+
	wa1d2NDXjbdFe7ZaIsFrSIvfiI+O9ZiuQ/4auH3S9dCDM6mlI+4/0/OGR9Lf8nIvdvn
	wWjkBg6+AdISxpln3EaMxJK2mtqopaaWojlz4Evw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182c5db3076-82beeca3-f06e-4d5c-86ee-817d32d00dc9-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: f8c714969ad72e11ef32f262aeee2a615e52e027822c3ff5ed681152d238118e
Date: Mon, 22 Aug 2022 14:00:54 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.22-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661176852
