Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BD1C12F2D
	for <ddprobe@lists.linux.dev>; Wed,  9 Mar 2022 20:36:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646858185;
	h=To:Subject:From:Message-Id:Date;
	bh=+jqSPEXhEl0gjDw+spFh2oOpowhmQ6UOfB6rKj8S/ns=;
	b=WhckE4MosEVGFi+SCsiQi3Tba1QSytLgxZyYGQC6xRl1KNO+M94CpQ5adFsEXH84
	71sFPYwh8bUXns9Pr9N1esE47vrULRqIIvDODYIZEITqGxkZcCeb9tFOaMBEG9j94mN
	X825jwekRZ+YOWDrg+IpLBofq4Gsowje02GDQuBk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646858185;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=+jqSPEXhEl0gjDw+spFh2oOpowhmQ6UOfB6rKj8S/ns=;
	b=D/qzMD2j62VHZ1ttY0JctAuoajFPs8k3moXAyJdIx5vdFJFITgMfUn5KNf9JUwdV
	dqnemWEb+ILHfWOpCnegxXeKlEe6laSVvpiUKlfw0cPdz0M7idlsixGrDCpznbaTfF5
	krW1b8HzjLdiNOjSRhmHL+MmJygWgR5AzAgFjLKM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f7065a8f1-62e42a3e-ba88-49ef-91a8-8756017a353b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 4ac7817c12a73403e0e3ee53378ee3292c79ac6e4037af1b85426e6a90f60e0b
Date: Wed, 9 Mar 2022 20:36:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.09-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646858184
