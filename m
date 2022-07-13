Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E9613D84
	for <ddprobe@lists.linux.dev>; Wed, 13 Jul 2022 14:16:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657721812;
	h=To:Subject:From:Message-Id:Date;
	bh=C0VjFbwk9K+Q3iWi/t2OqWcnuMM4v77D9tiVt7vv8oI=;
	b=GX+L0ncDkkPuCwuc9ATpnTZY/hEtRa42p0+RBWQGKbR0XfrmrDGOWr3VKyo915rB
	+ADKl0S6e75u4Tnk2iJE/dcJNR7e9odWlWHPl9iWBB0tRb5DrL+2HqJEs/HRLC+Vpzu
	17S3B7MtHLYoToK6qZekLiMV/uW4UrDWpE7L4+Lg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657721812;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=C0VjFbwk9K+Q3iWi/t2OqWcnuMM4v77D9tiVt7vv8oI=;
	b=Fs0TCmiwc7RFu/mCrQuxTVAdgsgZCvQeRXef4TgZwh+yfI6ITP78bSrA0+QifgeN
	NTfZYEg71lSnCdIcwDia2Dltv4qV29bDg84KxmrlzjomF1seySpSpxCPrDeYjwjVVig
	pJohTWPdtHNZfuyuZ3heW+kERGOgKj2gT6Y7vVGo=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181f7eb7587-fa19dc47-457c-4d90-92cf-603cc83fc963-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 987a5cf2dc6a794e73d216d7a3513748e718d526c80ca5ab924e381ab93c6f2f
Date: Wed, 13 Jul 2022 14:16:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.13-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657721812
