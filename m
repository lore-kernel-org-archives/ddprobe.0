Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 157E910E8
	for <ddprobe@lists.linux.dev>; Fri,  1 Jul 2022 05:26:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656653212;
	h=To:Subject:From:Message-Id:Date;
	bh=jtqw5oNZ8OOB+F91Sx2aO3YX0A4xYpNaITQQ7SlhX0s=;
	b=g+drE2y2pjpEhneo6gp78rUaImeB7Je1O1DgAAFmNBA48/GlfONpO3hUsK5SYRiv
	S1GCXZGM+ZImQFBD4UQKXiiGx9cEcLP8W+yey8egifbQByC95Lag3TdBWhxHF0vYCQk
	2QYQ59sEW9mDYdc5F5DTy7oxvtqOxzlRhsiAq1tE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656653212;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=jtqw5oNZ8OOB+F91Sx2aO3YX0A4xYpNaITQQ7SlhX0s=;
	b=EbcsQZY4eEW/e19red5I90B+R8ZjLhQS2yBAQCve9zhOPJbMlnmMjdc0oX8FfVHu
	p8Kl9SfMXX7EiAqEB0ZPh0cNmj4uAeG2qhpm0A3QEvOaM9AmijOH9qmITAlgeQ1gkTI
	SwYxRvKE8oS6jwltiQYRojnW6ZZLQL6ewXHIuT0M=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181b839eaf4-6ca423e5-930c-45f3-a1e4-93b96a04f6e4-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 7c3198eb87464683e96cd23ae0d971d8f61ae4a42ab57ddedbda2bca53e10330
Date: Fri, 1 Jul 2022 05:26:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.01-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656653212
