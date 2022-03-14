Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 95BC9C62
	for <ddprobe@lists.linux.dev>; Mon, 14 Mar 2022 01:16:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647220585;
	h=To:Subject:From:Message-Id:Date;
	bh=MYwYGDlxJItfDswP/7tBJOc8gcrHLd2PLhRxlg9XkOc=;
	b=ew78juA6iGtFKXAldr2NiyK72lFoPg9JcqAaapp/poQ1WWRmkLuycZZAQXmjLmNh
	KfeWXjhaAWCABhDmhROKmCi7ORKfu7Udpnga9mFJFV8eEQcaTlVTkvpGAq9IByi7y68
	xt6MVPr/NKV4UpjZ+MwoBtLhWSEjh2JuP9ldrQmM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647220585;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=MYwYGDlxJItfDswP/7tBJOc8gcrHLd2PLhRxlg9XkOc=;
	b=NU3aABjdbnJJe/CMxu+/JOPL77lrqHQLlXjjtUwNSfG8SpYTFLmrMECdjBAjpUiL
	qFF9+5tuFCHeFo5RrseoprljQKN5t0v2zF1esoWZEbh4N0VrKdMMmocMI74QrMvgs9x
	1KzgNyQ6ZCYl8to2x/CuRBgLFvYgKY2sxevL8QUg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f85ff71c4-fa29ed92-4d28-4eaf-94b5-c07c054fa91d-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a3323ff143b47b4d8d5e392d869c47ef50ed34d3e672c30c5812d29614800a65
Date: Mon, 14 Mar 2022 01:16:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.14-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647220584
