Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9B9D77A
	for <ddprobe@lists.linux.dev>; Thu, 24 Feb 2022 14:36:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645713384;
	h=To:Subject:From:Message-Id:Date;
	bh=QdZQjPKQ6rfnRaQBh7C+w+xWWqMHhAegU11gxbRmRCs=;
	b=KCuRCR2NCNMdhFFJlk2cqWONPUIn3ZHOWGjWSag/H8uztVS3x1fXVlNVlJb0Dfe/
	pz7fMaW72ZVcNdv7I+grZL1RjhfZg2aWgnNGXPVC+EMEhi0gJcKmk+NR3VjqOu6jrKd
	7AGx5YVYaKZpZaP8+4L6PnCi3j3AZWpA6k8SKz9Y=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645713384;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=QdZQjPKQ6rfnRaQBh7C+w+xWWqMHhAegU11gxbRmRCs=;
	b=Id65CCtSeC1gHYePe9PW4nwhViTMJL0Du8gnPETGrsgtuUmOqrhUm73/K3BLI33o
	pFPXS+D9ypNM1TZ4lqMnprpZ5wsXSXdfVbtA9yP/9HG836IBdB6+4RKUmBcvu6cIoDo
	BSY0+/yVyav8L5tH9HKQouq8pp2zDfcmWf7Akn5I=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f2c296538-d0a0a756-69e0-45cd-a7d3-7215ea5fbdc8-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: c9151fdc92da1449c394650c6c54939db2d27c163d7fed115ba04224bbffcc71
Date: Thu, 24 Feb 2022 14:36:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.24-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645713384
