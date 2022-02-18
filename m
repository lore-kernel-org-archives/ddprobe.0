Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CF26C4C9C
	for <ddprobe@lists.linux.dev>; Fri, 18 Feb 2022 23:11:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645225885;
	h=To:Subject:From:Message-Id:Date;
	bh=LfkCWX4x3DUbkt6lpEgFMkYi9kL6Wd4hD1mkCWH0uJE=;
	b=XQrWQa10mup8LC6uyBeiiX83dUu4Sn20RYGtAv/hzENZjxV6csG15ZNWYnTAFovV
	E38GyXeB4Lh7wB7MT36uYjWR3y5QU1w/WG57CVqK05DKCkZ2pcldA91paoeaudzrwmu
	tN1q7b9aKitfGmXqxhg7gRRCq32yRMQcfKsLCB9k=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645225885;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=LfkCWX4x3DUbkt6lpEgFMkYi9kL6Wd4hD1mkCWH0uJE=;
	b=KuXuI1Ke6LY8xWdgvh5oMkbnyeualPhuWRDXU1cxPjQaywDre1hHAJLffmPc88T1
	Qigvl9DF8Ihrwfl7zrxKM4WXt2IsNOrJPkMKON4lY7ZQ5xsZUARNyAgaZ3IzU2eKzSP
	ZKJtDrhvB6NGrlf1I1cUxlXWewipqG2NMaJ6IyrM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f0f1abc56-1098b719-ea38-4a3c-a827-3b50cd6e974c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ddf5dffa535b150fdd5ed83dc345971e7809457fe1660ec7cdc15765efa96274
Date: Fri, 18 Feb 2022 23:11:25 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.18-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645225884
