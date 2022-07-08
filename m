Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0BAE43229
	for <ddprobe@lists.linux.dev>; Fri,  8 Jul 2022 17:56:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657303012;
	h=To:Subject:From:Message-Id:Date;
	bh=K6WBSB8DocHiZ1wY9YytNeQfo92mabE+yggDpfXKqRQ=;
	b=MEsJJv+7VIBHGHN5VszRriRLa45YfLpP4qgiw3xcemzkTPr0rOztBPs4GmD9GCYC
	ijvnf5Xc7EXXvo4vqLN8VrOd9CP9yqWSP4p1uAxP4NwWd61UW8nT47sVTNukqYqUZiQ
	ITp6a5a+P6hnerjvasTKLRbQZFeG1sZ7jHB+Tjpw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657303012;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=K6WBSB8DocHiZ1wY9YytNeQfo92mabE+yggDpfXKqRQ=;
	b=hMPh1kzLWga0vHczvSYmSGMH4ZFRKWaEnEGJpf/xj7ix8blZFcada3douo5iD3a8
	d6+qEOvFHqZ28b3LYI1H26gCZnBxtwfnx1mcgdTbu4IhGaC6tNw/yWP+Ols1HzO1UtO
	O+4Bnfxnqb5147mpwPqMtTJxZOkgnV7Q4Id9jALU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181def513d0-af4c2b37-8e15-440b-b916-97f3b58e5f2a-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 849d139ceee2f5bb1a820b404100c9c17a54b946d30410c44482c6149b7e05d0
Date: Fri, 8 Jul 2022 17:56:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.08-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657303012
