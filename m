Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 217442F21
	for <ddprobe@lists.linux.dev>; Thu, 12 May 2022 11:50:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1652356199;
	h=To:Subject:From:Message-Id:Date;
	bh=w4mnmOZNNeqPfZwolHCCuPQenbcQ9WWf03jxH0WivTY=;
	b=PD1A5CbgMN9QejE1ZfgmSXdiaxI+TJ7gi/u5gsgv7cqBTkhBttiSdl/9NTyW9pHr
	Ozv8f2GpgrCsxCK6gQ9ILiA0pcppBF1QeRmcKqFRGvDHf6GbQTK0fTRmIGSI7QDaHLc
	/mqwTfMTDOjrQWzXad4j3J+9xSBNzOW3Y6UyJVnU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652356199;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=w4mnmOZNNeqPfZwolHCCuPQenbcQ9WWf03jxH0WivTY=;
	b=iXVAXpSS5JPjD8Rf0eX9UnYgam5D0/AbJTRh2L9kTzXKTJb6AlOp7Iwj2gzH8uBd
	84lN57BiPD5sCAHJQNPfv3MNqZSRKPYccBH6ce0cM0CWHFgrSESCcw+6fpUF5HGAWvQ
	0ZfP76qwqTyRKEviej1vdaU4WoEieZsIiTDDT8mI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180b81ab37b-1c900f40-e294-458a-ace0-5294c41ec394-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ecb06b7410295e08c55fbcb45add3b78984ee6a18ba295cdd9d799daca67eeac
Date: Thu, 12 May 2022 11:49:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.12-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652356199
