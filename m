Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D26FF7A
	for <ddprobe@lists.linux.dev>; Sun, 20 Mar 2022 08:56:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647766584;
	h=To:Subject:From:Message-Id:Date;
	bh=tPCHEFNh8Wqs1QXXI9XJvY9u/WJbkj75alrc4SrWg0U=;
	b=Roo9qKatChRXGC195YGi8dMVFlrO5XdZ21H0xot+y0Z2bMHnIbWXHOUhRr+sivs7
	MevwbDyh71+c/N7A0CE8Fdl12/t5s9w40EEy0hc0ORZNMMdpBsDXjY1P1ADgBPNjBoe
	YZb2kzyqyfo99uKygYmYX6XpfwTjbdQOGTSpe2KQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647766584;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=tPCHEFNh8Wqs1QXXI9XJvY9u/WJbkj75alrc4SrWg0U=;
	b=jwyLEo2ci4FlqXt2hjvztQK3CbsdMGcvkb5hk80McBldU7Fm+/BHoxsxvjgo/RQh
	tt2oMyYQrp6xAMKhJZcSKVaD3NWmnjcA1Z0UoLm9leGmAqSuxC5U8gRaRvZyGrHhllg
	XdIqcnXhJEzCw9o6r2NPTWn/2rCr7yER0s+nBsOs=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fa68abdbf-43960bb3-21ad-457b-bfe7-f71bc7577907-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 98a9210d395957a455bb92706b266203c70583075a53142dd153d815e59a8815
Date: Sun, 20 Mar 2022 08:56:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.20-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647766584
