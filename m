Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6CABB1FA1
	for <ddprobe@lists.linux.dev>; Sat,  2 Jul 2022 08:06:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656749212;
	h=To:Subject:From:Message-Id:Date;
	bh=dbALD3h36fPjNCQgKzuKoOqCTLUf0Ds1WFAUOK8zQVg=;
	b=i4QxEZSn2ub9i0wa+bXFZY/iGCtKw6LzRmQ6FSHfRRlWyxqTpSPl/ndcdG9cpmI9
	qQdhR0AILhOcRv5JPFVDxy+/hJ4G2EuXP4jJLhlyDJgNeDKD05pr0PvvUTjufHHuMWY
	DFv3Z3c0WEeWpH0BBADl7j3MRPP91A7VbbTOsucU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656749212;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=dbALD3h36fPjNCQgKzuKoOqCTLUf0Ds1WFAUOK8zQVg=;
	b=coiTS9cmQbzHOqBTSamYMX9hQa18i8cohmeSEvMnaZKaiM9n8eZkcliJKqfdWhBz
	GntohKrFCzD2krIMQWsfNw4Zi2KmeNsUJEiskRXJiZvFfQX2H0jOMkEOMpFFRA0Exfg
	U6yJyB7f53QepRjZoHzI8GvQHebXJoWcBhNdqNNE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181bdf2c288-ac138078-6c2a-4595-88a6-f0ce990cdd71-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 40babc2c073f49a8a1b36e5397367c31cd935368bf947245f0a07513c0895ba2
Date: Sat, 2 Jul 2022 08:06:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.02-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656749212
