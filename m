Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4378A256E
	for <ddprobe@lists.linux.dev>; Fri, 13 May 2022 22:36:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1652481359;
	h=To:Subject:From:Message-Id:Date;
	bh=WveddN2bSjvfHZ8bsWGzLf4QMbMdj3GgrkfAfksNe6E=;
	b=hoBjmT4bUE86tVorallAl142FfcL3EsG3exLq2+w7hR6Xb/GbehPF8tYe0QM3A6H
	2VoyT5iX8o5UMIaYQtr0RfJ1d5Heh9nRYaENF2opwZZT+B3NlI0wVFWflP6/3h2JyKk
	scAwXpiI/GG8SaJ8pjyvCB/Da86dA6lpLDCSw4tQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652481359;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=WveddN2bSjvfHZ8bsWGzLf4QMbMdj3GgrkfAfksNe6E=;
	b=AMQ4zcm6KljIS5nEowcWEQJ4md4BLrrLxacT2mN+ZckSGai455lRum7kaYb05iib
	BdDr3WKQe7zQVtdphF/eEY/tNr4qNW1XfmFed7I6NeRlpi+wlKWBdnjVDZEuhMFwSPz
	kdaHzTt4u1vgNwdaMkZ6p18CpM9pzZQQTYNZhdMw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180bf907e0f-4e92ce0a-efb3-47cc-8873-f88949f07fa7-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 30eb8aa6618aaff620598be6e201ff9292e710bbbddfe6f9bfde07e3dbe2ed38
Date: Fri, 13 May 2022 22:35:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.13-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652481359
