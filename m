Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EDE7F1FA1
	for <ddprobe@lists.linux.dev>; Sat,  2 Jul 2022 07:46:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656748012;
	h=To:Subject:From:Message-Id:Date;
	bh=OOvxZZdR5D6vHG1cuO1RUgb7yi91d8c5SXnlUbG+1TM=;
	b=RSKtIZY2rsdbhvsO0o/JT2J7w2KratNWFjR8g/iy0w4DMvsCBtLITef+GWrg5+kb
	1+xIDEoCNj4rqrpgiSm5OCDZXr2KoOhfBZXVqvnRVg/ijkwHRN/237Whbgmi7V/Xw26
	wNxWrGhDePeQMotPT7ekDTlUSJJyMVzrRLlgLyM8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656748012;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=OOvxZZdR5D6vHG1cuO1RUgb7yi91d8c5SXnlUbG+1TM=;
	b=bJbbUAnhOTOciYE9f82fxHDK5CHyHleP5gI36AchBqW3y4m++o1CQbf7HczVdah2
	P4B7uo7kc1uG0mt06AiIRHk3eVHVa4Sa8/1b3ACut0NIPQ8slkxOQQ3gpIv/biTo6x2
	En3bmz3nt/AXke58kmWCcVT2S5nqZc09Eu2iuimY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181bde072ef-f4eb19e7-291a-4022-80f4-af5610229f22-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 372ae71e5eddcedeeeb9a8413292811a7d82f11081cf43c5b46691fc2555a672
Date: Sat, 2 Jul 2022 07:46:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.02-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656748012
