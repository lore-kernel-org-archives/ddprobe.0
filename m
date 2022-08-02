Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 86F237F
	for <ddprobe@lists.linux.dev>; Tue,  2 Aug 2022 22:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659480052;
	h=To:Subject:From:Message-Id:Date;
	bh=q+B4EBNTraBw+k/GSD+MdQIEt5Rlx4rBECv8vd2+3Dk=;
	b=G1VDKTj4MlCLbtKB0m+cbmabEC+1p+fHmnMC5UfHP/MUg9HgSYlY991mp6s0Yfgu
	Ek1Jyi9HqdQjUrJl7qj3AePFvg5wQbgfh9YqM0yQ2hnhLs1R0mkwEHbvlXFMOySNQDg
	N8POOZ+XQgLf54YWM8AERT+ifAaWMTDgiSCTYNuU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659480052;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=q+B4EBNTraBw+k/GSD+MdQIEt5Rlx4rBECv8vd2+3Dk=;
	b=Nj96PgQIR65z0MItl7ywO3BNarEyHtOKP56JY1tFw5gpgb26Be3m2eWcm5n7bwCH
	9KECT36LWp2GB8sbMcCjbGvu1sjnHFAESPmoZuqG9zxQKg/9EzSG5JTNwDOJ7FgpABK
	3JhnnA5WigrRqENX5+tkJx28wTiAvQ76zd6FkfiU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018260b81384-53f187e8-1fc1-4c9e-8a07-a38376ff30fa-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 90873126ad3f4379d38aad9f63bbf5c45d83cc779e49e058c4cd357146e2bd67
Date: Tue, 2 Aug 2022 22:40:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.02-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659480052
