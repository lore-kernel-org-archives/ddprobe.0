Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2140733C1
	for <ddprobe@lists.linux.dev>; Tue, 12 Jul 2022 10:46:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657622812;
	h=To:Subject:From:Message-Id:Date;
	bh=7VJl9mOlbWTh47FNYo3gg7fsC3zzYr/WsTvStryuCsY=;
	b=JrYtalFxA1OhEtHjwWhJwx8h1k+YTr9K658yB8/Q73sETL5d7fDgJNB9yc3cqNdn
	tqEIG8ClrBln+Vv/MM5EvBrqZ7hSzgP7HDAcV6AHhUpy3gD++3KkcmP2JG49LZ8l/2Q
	5APKU6fpQ0BSA1/KUF10TJfXDhdad4EoVPYhRkbk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657622812;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=7VJl9mOlbWTh47FNYo3gg7fsC3zzYr/WsTvStryuCsY=;
	b=edETydeiwz0najPBNPyqT2+keREY483VCJO0uaaYfdgMJQP7QKLP00MJrWYIXIbC
	ga0/uSbMh/Ark7ShyGO2Oy/xPBtsxebB2D+SU1DPJJXxn1+RpbFz/zNndGaFodBvBJG
	qi4lMCwZU+Y4HvEcu4KbSNdJExIQt0pYjv9VMqF8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181f204d65c-78dc5563-35bc-484f-b1d1-3681264a1810-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 5a27431671d3c0bfb6576162f5963bed4bca20aa324796e4633e762294d1bf5f
Date: Tue, 12 Jul 2022 10:46:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.12-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657622812
