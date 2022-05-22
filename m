Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EE0427C
	for <ddprobe@lists.linux.dev>; Sun, 22 May 2022 17:31:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653240719;
	h=To:Subject:From:Message-Id:Date;
	bh=o7VgAYk1kSbwVIPimr2wjATpko0rAmQFS5WRfbI1374=;
	b=iFG2XIFQASDCsmxlJby1jEpe9cTGjbHpGuZTqgB0UNwAvWXnF2mCnnQ5LHnDkumm
	vY2n0bOHh98pHnhIlmFMe8SYaUFYMVsNyf/Gw5adf4sLXCvWOPiHj5G5yw3yuKwWhRb
	3FXkWSMQ/pJSBHl9vfJl8WAVgYh6hai831bjKY+A=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653240719;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=o7VgAYk1kSbwVIPimr2wjATpko0rAmQFS5WRfbI1374=;
	b=HjdWpDTcmDxaum61XSfedqLX3879KO8N93/9bZMIM9uEBEamgoxdKpjSQJP46ico
	r6R8tVOu2qlxTcUFscAYtujUHbvNJs1hxuUlVBY3QSKNC4qNQ0REgU1v2wn7BzXtIPN
	6J8CtBRYssOZOnvd+HveWqcNKzpYxdIBh91FIqN0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180ecd3679e-69f3f8ae-b682-4e98-936f-95e5f8a7189e-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: e01ab01a3ad50f2663dc5be4ad0a74667bc675addc0951ff9dbbbc4f11154f51
Date: Sun, 22 May 2022 17:31:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.22-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653240719
