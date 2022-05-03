Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C87C17CA
	for <ddprobe@lists.linux.dev>; Tue,  3 May 2022 18:30:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651602658;
	h=To:Subject:From:Message-Id:Date;
	bh=ams5C/thS3ekwXG6bR1paC+zVQjTsoQ9ZjuHEEERbKo=;
	b=N6S3D8OanldeVVAoEFzALwPu2eaBYJEc3FeieH+i44FtHKqmSl6Z2TIA++gFije+
	ztNqnyHAChPRG0ada0I5VBzW1BQvaV/Tf7w6uLDdF9gSeqI0xgeq401tUNXfpPrbmPp
	qUpJXV3Ju7PFQJNNDN+an5T56XeeZqdKFYx2xusE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651602658;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=ams5C/thS3ekwXG6bR1paC+zVQjTsoQ9ZjuHEEERbKo=;
	b=Opmt77DLYNR4XurgTV9zz+/v4cpm2QWMrzJWACCRGp9hT7mICFAKZGT062dAlwzB
	QS5xohZ64N0x51ruOOUFLH6JsCjfAJMmGt2DpeHuJ+iHhzPnTKWmcLRCyxIDlV3+OOD
	8VrS8FS7ApXTcXnQE51s6vZLineLVfsfHvDWNsVE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101808b3093d4-5bd46377-0089-4ac3-9926-d79e8b041be2-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 604c8d5720b7a1496537d9ded42bd3754f40f010cde621a95828a25a5b207829
Date: Tue, 3 May 2022 18:30:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.03-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651602658
