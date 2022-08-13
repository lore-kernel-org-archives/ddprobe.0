Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 652EF368
	for <ddprobe@lists.linux.dev>; Sat, 13 Aug 2022 11:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660388452;
	h=To:Subject:From:Message-Id:Date;
	bh=P3XphukI8t80lch0zv7+gVbUmbXHtpM8PIcsZOnO0Ew=;
	b=VJgnXi7Q6lQUj2BCaMs0RSGcP1zlRaMPElVYZmy/nMqYDeN3TYm1I+RsaeGmhLlk
	ocezm/u/5mHjsw+ZJPnH9XWvHH6HGKoXhtfNyjUUfrz0nwaqqTRgYINz2Ffm4ZCdQ7j
	dEZONHRmmpsNeYYGaI7uCYKr+FB7gtRAkZdzD2ak=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660388452;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=P3XphukI8t80lch0zv7+gVbUmbXHtpM8PIcsZOnO0Ew=;
	b=XyaMhgZRqYy+WWg79M+bx5jzbADJquSNe6dzCBcLu3WNJ4IYAH3VsL0tsmDqwFsC
	hlHn1Ne4UmrYBGGy8FbZy/P2nkG3P57KKTa+tijA0A7CFff8ALe/oTAV5nHRaQKKdI/
	UVTNQbt/ur8y+RbIHyAP+XhejUrRYFY7U8XpQaM8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018296dd28f4-840975ab-968d-422f-980d-2bbef58a245a-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 4e013c2d2fbc7d4b926e2ae4d66a7509467b4953a47fa5054ccf0aadb0aa3d4a
Date: Sat, 13 Aug 2022 11:00:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.13-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660388452
