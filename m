Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D63733B4E
	for <ddprobe@lists.linux.dev>; Thu, 17 Feb 2022 07:21:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645082485;
	h=To:Subject:From:Message-Id:Date;
	bh=rAYsB84iLEPomOdnJtdgl9LyH/V8MZ1MSc0edG8nQjA=;
	b=kPaE+jR5EmKO46wWTkbP3AQE8dNvTORUEuLiQTAPcDr56uNk5x2whrs16mR6WAoZ
	4gb3KJf7RXz3PvMvEPFezCgG2UMT3Pl1hSQQFKJCnihKBhUF8QxqTeNaaGm0QrCGyyg
	1y3MnqnNC9p9AlcqHq1MkbxNgVCqBihErX/fp+dw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645082485;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=rAYsB84iLEPomOdnJtdgl9LyH/V8MZ1MSc0edG8nQjA=;
	b=AmpUZi3rjxeT/VUXO7R1mkK605Avpy0zDIZIzfZR11sXI/ZXmmxIlgn0x+43T6FO
	bZ5UU6boiz9hd/FVCgtXssxU2OhfkLOzkXYmmU0lZ3kFcGG+8L7Cd7RboMhyUabwCsO
	SNmR4EaaXeZMvv3mphLQArcllFRVZ3Vlsf2ofzow=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f068ea026-1a74dba2-1c7b-4a51-bfec-f9eab15cb2cb-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 53467c62a00fbb292822a289ac2ddce1c7d5163603e3e733f7d23f8af094bd57
Date: Thu, 17 Feb 2022 07:21:25 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.17-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645082484
