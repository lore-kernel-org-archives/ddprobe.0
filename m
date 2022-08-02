Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F0F6C7F
	for <ddprobe@lists.linux.dev>; Tue,  2 Aug 2022 15:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659454853;
	h=To:Subject:From:Message-Id:Date;
	bh=5lguxILACNHW9NmiSJD4X6tbl3NaEmA6EguRnjeiDeI=;
	b=CU0aVOl01opPWbS3OIc9ckrDffMeTBNtK9M3unnL94cpgFwE6h8d49mZcjHTzyvE
	8xKDxjuyV0lzGIO25rBKC4Xlph92eIA5QjV/ZqYSvsJG9awNXDJ2nr+dyX24Pzc+Ugp
	ESBDjywZAX+EwpdbTBa06T7jwLEbdADpwVRVxwiU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659454853;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=5lguxILACNHW9NmiSJD4X6tbl3NaEmA6EguRnjeiDeI=;
	b=gQK45u5o48RyvhaZ3jGj7Oo4FwmxPzdR0TWioZAg+qWqLhOTA7Is/cYIbH1XlhHm
	Z6wftde6Cwa3vTW7OkHShpQOzms1RCzV8tPOOJ+C5DI3pz2iAVSqz3iEk2yUaU8De1R
	j1cld4Ggdf3nPWVice1hDlmPfG+OG88Fv4AKr6Uk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101825f378dc3-e8c9154f-815d-49d6-bcb3-7258237fe88b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 83f0ae9345a36aae73425c93afe9a7465e244f6d412c27189536e07f3ff5d73f
Date: Tue, 2 Aug 2022 15:40:53 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.02-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659454852
