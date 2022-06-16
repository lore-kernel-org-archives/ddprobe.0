Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 155AF7E
	for <ddprobe@lists.linux.dev>; Thu, 16 Jun 2022 00:44:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655340299;
	h=To:Subject:From:Message-Id:Date;
	bh=GKoqWsc468ALWGX8C8G35ZVJtjNbQGMOuHW6IX64fvw=;
	b=Z5bAyUYY1SFuFvPlY0HwOwzuKtXWHaBfhOHxTlIchs6hEsu3o9yxXt9BdXI3Lomq
	0wEgdyL+ZHbB7wMBXyJf0P1QenQJpUqf9By/hNsBNb1sI+hxu4POXRdwIZRhnluTihl
	Gb0nejl/1kfQOL/TCMv/Qw6VxPVpUJOukxREeUF4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655340299;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=GKoqWsc468ALWGX8C8G35ZVJtjNbQGMOuHW6IX64fvw=;
	b=ZWfAM08Cdq1zJVAkXw4FixSdCzjOzc/khRfGFgHbrk/JR521c3wSMtSsFThEbasK
	E+v8LyU2zSJim92YOihum/dDGiKaAxt7oh1m2OhzaiZkjZnO1ZYjihdMHiYswWjEXQz
	3zuTAEkUJSZlln4E4RZjOIvnw03iFCzVj3iwALSs=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018169f873cf-6b906ed9-f1ff-484b-bc5e-f7c304d328eb-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: df9fe973c959481df398a4fc4e5cbaf3e610e45a1f3f2c965cebd26fe5f242ea
Date: Thu, 16 Jun 2022 00:44:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.16-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655340299
