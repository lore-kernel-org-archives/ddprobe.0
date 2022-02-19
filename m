Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C25A753B5
	for <ddprobe@lists.linux.dev>; Sat, 19 Feb 2022 15:21:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645284085;
	h=To:Subject:From:Message-Id:Date;
	bh=beaYVxKRtJ0FSMiI0a17vp6gyRbhIcof12iG5i0zH9k=;
	b=bJbfLllndAA+STLTreIEKF++osGY2uLOjKIGv/eyrWPHkkBWo6G3AilgWxCzRL6r
	vXSoMeBk5en/e1HIvrnkXVXulOjGAeqxn/YSSZboSKmCc0DJ44/Aa5QsZHTM8RrtMD3
	ZVmHUY5airdaX7tsrwPgpVLZ54J5Da3UJfsEl5A0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645284085;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=beaYVxKRtJ0FSMiI0a17vp6gyRbhIcof12iG5i0zH9k=;
	b=eSuy7tCO0aHX0/Yeu4FBKBM6HQquqcjxhLsa9bBhRvVFbWhmuASZZ5v/uaU9vuRW
	vm9GjgnHC2TtAoTd42D/dNdLes/XaFW+p5nwFYYelOvBElsc5fDJy+6MeB1Odpy1JhM
	cK6a0q5q7DWKLDRCgIbTFm+4vFLC6y9D7+YBaFM8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f1292cc2c-fcc15e98-c730-4306-9e16-e55bb6e3495c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 5f45d1035e5282cbdbdcfd2d82b01be96715d657fbf80e77046a984a023651b2
Date: Sat, 19 Feb 2022 15:21:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.19-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645284084
