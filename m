Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7CAE77E
	for <ddprobe@lists.linux.dev>; Mon, 21 Feb 2022 14:41:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645454484;
	h=To:Subject:From:Message-Id:Date;
	bh=rghf/kt3FUHWeEjsyKJJcN8eXEc55zocyZrkfiLQQMQ=;
	b=Ew+q/lrUrHQ97a4wKrGUFt2xifS+HRN0j/PG7Lgil0oodOb3Q5reyy+FoD7OYvRb
	cY36crUQidjI0P7Vlq2ur0d4K7sm5JLrRnN6w6iAR4ughiCB027hRNuo+I7+HGnMKIA
	IBIwpb6K1ZeNnUs8xS815bbErtt7A2bE46MYm/SY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645454484;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=rghf/kt3FUHWeEjsyKJJcN8eXEc55zocyZrkfiLQQMQ=;
	b=SfeqLx8bmfMM/8eB22dhpOWWgXw1PTZ+tV8hx+pEMnYoNkN9HR5954i2/nvDAOCi
	51yVdcLcwrkkPyF3aUPo9yw/EDQ8urD3/PqbasWSd8pH/6JiWP3x0AGl8XbaNEVO/72
	79GOCCutEgqAYVEmqda00kX0HiHkk8yl64hWzRU4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f1cbae524-164158e8-ddee-48c2-bf1c-04af21b7c762-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 014f9cb09cfde5b23cd6d29992ba7eac8430fc03e2de35ad36d268cc68ed5cd6
Date: Mon, 21 Feb 2022 14:41:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.21-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645454484
