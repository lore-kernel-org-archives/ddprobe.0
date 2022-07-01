Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25A081871
	for <ddprobe@lists.linux.dev>; Fri,  1 Jul 2022 13:36:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656682612;
	h=To:Subject:From:Message-Id:Date;
	bh=uvezReOLrVlsDzPCRQPrB9MA0yPdPybfZtUVt9gLwF8=;
	b=HJX5wBe88ye3XV2wPBKjYxWmB9eRigUDBLPMtoLV+8H6wTIb5AWJIRNx4GCNWxEd
	ZDMIKhA4uO4MtkreDvJ++rAqVhvzv8LixYvDVWyIM+oebk+xFNY7hB3+Jv9Ti0yrCrT
	BK735+bELhqPSrnOZYom0WnBiFelCSyVDJXJDfro=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656682612;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=uvezReOLrVlsDzPCRQPrB9MA0yPdPybfZtUVt9gLwF8=;
	b=fo3Pk1pULPN7iECcojr5+o9kLA8rhIQVr5RhXHT3skLSjwbu1dN6g6DlB8XZlo6S
	uAmkJB3+wkYddbsO+LDr32I7dy5ldVJbZzZaBsF4zqmie1r56q5EwErXkV51khYiPY2
	c9b9tGHANzCh8Vp23snZTO+t+OkaISNOD3dvqR58=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181b9fa868a-a7e9adc4-c5d7-47c9-8104-910f5c0e0ce8-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 5f5c15596d99108177449784947f2f6197a0ad806d128bf79acf529f8cfdb877
Date: Fri, 1 Jul 2022 13:36:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.01-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656682612
