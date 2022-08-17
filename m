Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 497867C
	for <ddprobe@lists.linux.dev>; Wed, 17 Aug 2022 07:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660722652;
	h=To:Subject:From:Message-Id:Date;
	bh=Fef/TBn4WT842AV53uZE62wIDLyAx80f5jy71EKfcfY=;
	b=cV7W6byD54WDhTlHemn4CHdbiFOi6FxycgIWp5tpb5WT2OWRUJayIo3efZcPzMgt
	4XYJSYfCNHDeabY7+Dtnn5qiEAPlUojCApx0WLxXBMqxCxQimrC8Mn+lZlzcpTyLPKi
	4wBlL5p5RJp+kQ1m2zQsJBqzdBshDm3PpqTbLEaM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660722652;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Fef/TBn4WT842AV53uZE62wIDLyAx80f5jy71EKfcfY=;
	b=al+Eq3oThnM/GYTbSSYKovTZXKPNYRIcfQ8XtZC3eA6dDu4OfVjl4LBI5kV0RQUe
	+J8JHp5mt95RPcsD8DtuLs4Qxrf7BOQGclDhJtOnK4vMWt6IvcaDENnhiVCX3JiMaII
	nUw3NUwjP9i2ZMb0lITDoyZCaDRethnUCbZ1YGzY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182aac8a5a9-14a0b69e-b78b-407f-a907-687fce39be36-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: aeafb9526009b6d9f4401d2326b2ee030dfeb65e1a9262582b0782761f38e78a
Date: Wed, 17 Aug 2022 07:50:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.17-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660722652
