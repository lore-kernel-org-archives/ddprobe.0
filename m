Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 501997E
	for <ddprobe@lists.linux.dev>; Sat, 23 Jul 2022 21:06:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658610412;
	h=To:Subject:From:Message-Id:Date;
	bh=dg8ejw4pdrtC3B+BdrW02vGki8YXUqo5R40FYb9+sgQ=;
	b=hSfU3kLMFTpQyZvxz9fyIjW+RLmNLhYS3kRpK5vnzqwCUlyqlNJH8GLTz3EfW23s
	XXrRkWn1Aq05gxMvzgGFbmSvy7z2oUsnefEvd8jEWCa9mYtUEOSKutyLL7JJ357NMkB
	Ndd+91uW8DyISWy8sZ+Z/Wk9Jlg7pp+21rHOVwdk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658610412;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=dg8ejw4pdrtC3B+BdrW02vGki8YXUqo5R40FYb9+sgQ=;
	b=ktZuhYY1V3FGj2tqJHzp5xHXs8J4fnYGhrg5HBvFk1C+WrxXcOsX744TyYfSvfNP
	C0Zdxrwca4WpdJQA/aMyaaoozTHYeWw7ikfkHhU+gtamTjYu/nwnu55C0IW+6hcxluS
	jTXMbO80oTE/hJmp6MykYT2Oxzri4Zc4O+1xiDPg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101822ce26ad6-83ca3521-dc92-4828-960f-cf8a8f98512c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: fc654e4d59a34d5de4735d2ae67100c25fbd10be7dde4784e1db19057e8e5738
Date: Sat, 23 Jul 2022 21:06:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.23-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658610412
