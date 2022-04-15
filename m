Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CCBD719F
	for <ddprobe@lists.linux.dev>; Fri, 15 Apr 2022 03:09:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1649992198;
	h=To:Subject:From:Message-Id:Date;
	bh=bR2kMbG9GCPYIxhLwzJ6jurWtTAGVfrIOUUVj+Jjesc=;
	b=XuC41STQR8nU/DezA0z3546cmiMSp9/xqGH5sFQHMyZghumtsQaJkjbpwc9nishf
	mQLWqye8jt9MZE7SmAOq1LIx6LV+kAGQVWLDemBT0L/DZbClzfekMgHNtHflW17Yci8
	w68m85svGe3jUnq2kkGGgohHaUfcRdDVVTY6U2o0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1649992198;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=bR2kMbG9GCPYIxhLwzJ6jurWtTAGVfrIOUUVj+Jjesc=;
	b=VNW43kDK/6K1dc7+Uyoyl77m8sogWa+5ipfavjCsYQ/hulxbwa8+cF/ejv5e316Y
	cCMj0D6SPOw/nfYb7/eeP7YAtbUm6NWjBL/c416W43kemDkJZ/t4qFkH8Bqx9nN+xoj
	PhG32snp45/ajR4G1gBGnqSpuWXr4G8WoEQMsXaE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101802b32e877-841a6ec2-0091-44dd-b94b-207d05efab23-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: e53a4a3048245da322d8b0e8f6bb71753a006146623a73286fc87eff77fe1363
Date: Fri, 15 Apr 2022 03:09:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.15-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1649992198
