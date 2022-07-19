Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7A2E83203
	for <ddprobe@lists.linux.dev>; Tue, 19 Jul 2022 14:36:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658241412;
	h=To:Subject:From:Message-Id:Date;
	bh=CDuZDtEiPOax8dEv/bS/2uMV4UtyZcPHOCkxn+d5CG4=;
	b=YvAVILFIn3v0dDHKKO2PsLUSdkGLi6gpxEgsGz1CGC4y7cXD7mt6VjVLZMMY34O9
	UQL253T5nmlEHlmlrwT4aYAQC2mHmUx1ekQ024p6QfPCeHKEllN7xahiU07dBL2zGL6
	XAzPY4+QgFLqpoidWVfP4ppDOIbQn8vOagvqTm/8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658241412;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=CDuZDtEiPOax8dEv/bS/2uMV4UtyZcPHOCkxn+d5CG4=;
	b=IOFSYxj+o17NgMRgo0V3oyyOGeofVOd8kvWvd2fMYKO/TMvxiLY9XDZ5t/yQ6CHt
	s4SLQvjqLeXz4Y6zVxylt4ya+UQmowjgsRRI7PZjBhPvR+IRncGsRJxWOJ1YBA6Hasv
	GdF3EzZS6px2G30xhqZra7yujZZExVY2zEWVJpaQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018216e3ec97-b369433c-be92-4de5-86e8-ff37dbfa75a2-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 38294afb9fd3e232b259ae105e8d35c61b417c1e4a9cb49ef3a03e5fc54e10e4
Date: Tue, 19 Jul 2022 14:36:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.19-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658241412
