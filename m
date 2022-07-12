Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4EB6A1FC1
	for <ddprobe@lists.linux.dev>; Tue, 12 Jul 2022 00:26:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657585612;
	h=To:Subject:From:Message-Id:Date;
	bh=fY8MJEEUhDDvB56YDrt/hUgId9CKShJbVIqZBIbTWFM=;
	b=PgC/mM+rR0bKp6wHTFTDrFv2T2XPbqf8EnA+kD1EY8CySdpxPIxQh0CCmhIYuqWk
	5p5HC+5HeqD9luphDpCRIFDt5tFX3AVtFRI9gwPQTSc9RD/fqsuQ0nNtW71JlrYw3L9
	PxwBvhHwYLXZfXbFnz4QH39VP8EARrgu2LyuHcl0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657585612;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=fY8MJEEUhDDvB56YDrt/hUgId9CKShJbVIqZBIbTWFM=;
	b=Y/X5VPJ7wHg17sIv+pwDs764ewE1Xq4mtlFix4NBqVHVrEo/V8cMX92DZ3nRY5Eg
	uFb0LabzvfajS3T3+1d1RPlolgT9veh9545C7nPh/nljqyeNUhDqYmzBNEeL+zkmhC9
	vYWJd5vnZWHKb2kBxNNwHlfdxpy24X1SS1bPB6HQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181efcd362a-ca8fcfe9-a51d-4282-a2e8-2727b6ec4fd8-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 46f66ea43f29db88f6025647736aa40057eb0ad93816ab97a681ab456f1e8732
Date: Tue, 12 Jul 2022 00:26:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.12-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657585612
