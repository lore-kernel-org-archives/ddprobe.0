Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 73F121FA4
	for <ddprobe@lists.linux.dev>; Sat, 30 Apr 2022 15:40:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651333258;
	h=To:Subject:From:Message-Id:Date;
	bh=EgHc5pboM5knW2tWVmQJqzCvw8WSfrNOWs/jz00plu4=;
	b=gDvBPBZkHjkJZgBk4ggaeeq5rUBk2UB6a0oiuRqls7taKU0bgF4orppVrEcGd5lW
	MGy1mp5ekWyuXCcndhUIlW2FpGG9ikRnY/A4B5DrGaJjKWd0jx8MBLKz7o4pQnef7Ao
	je9DU3G1Av4z3NEpsJdUFNL9Zo8PRi/3gxBF9vWU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651333258;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=EgHc5pboM5knW2tWVmQJqzCvw8WSfrNOWs/jz00plu4=;
	b=dx5G9+OVh2kObfGYNaZ1TYriY/QM6od3CsKnXZmwJv4ANBQ4FJa8EO8k2nipf7Y/
	dnXwOWoWyeJQg6+aIUd5T/8PMYwWfvoNP9ZS/uM1BC56ROpLyewUuoZx/q0BNur0v5r
	sDPT9Jr4I4rWaNZFwAJiQBQCLIrMcz7btGMTl69k=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101807b21dc4b-400b7fbf-fc43-40bd-94f9-98fbb3f7daa1-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 8a2f93466f7722a6e31da7dcf88dcec312b2b47cb86375ab36cebf0fff7bee31
Date: Sat, 30 Apr 2022 15:40:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.30-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651333258
