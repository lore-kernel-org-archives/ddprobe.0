Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5748A7C
	for <ddprobe@lists.linux.dev>; Mon,  8 Aug 2022 06:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659939652;
	h=To:Subject:From:Message-Id:Date;
	bh=ESkxJ8heUBlsjT8gYQd3oEVZ6Rn/A5zzOxjkRCTNuNg=;
	b=JZazRNgtHNZDYhyygwyW/m1jaidZQyXFrsKe42vw7WZTPSN2Tf6b+lcLm/W2o6Ll
	eKJykP7BjfkQLfSBJkP338BT/rGiGmlDt6hviczmTYgS5zCVqyHdIoeEiyyTMB9fYNc
	FqcETIYE5Q6ndE5XTgKucfq/FNAUY6wvkXYvDILk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659939652;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=ESkxJ8heUBlsjT8gYQd3oEVZ6Rn/A5zzOxjkRCTNuNg=;
	b=WUt8/vXtIFWc/df1gSdPDGAHmPWwqNlzRGNoXJPbsHYVbOU5tpyZGNB3ciH2Gw96
	VZtlTXSqv2XhOreHUg0GdSRNgLskH1Sy9G8eWH4ZiSo40PO4iH9KIFxwA8ut4OzImyD
	cao1YGpjedcCLILmqutIVNX5Bt2rIeP/U00Q9srE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101827c1d03e4-2bada533-3a90-4754-9026-0b4d1da11136-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: d1a061b783dbc7b2bebed4a1ea805d506846a8f93d6874f38c514f66df500777
Date: Mon, 8 Aug 2022 06:20:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.08-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659939652
