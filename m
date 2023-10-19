Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 75123199A5
	for <ddprobe@lists.linux.dev>; Thu, 19 Oct 2023 11:38:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BpYgIsjS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EF27FC433C8
	for <ddprobe@lists.linux.dev>; Thu, 19 Oct 2023 11:38:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1697715493;
	bh=xNIVCFUuo3lVhIqVyzRoexFK2z+10jWzkhyHjQOddBo=;
	h=To:Subject:From:Date:From;
	b=BpYgIsjSWt7giNzBtph7uezdh4KEHfGHRMGX+z2bRlyc3Ti7SGtzrqz15L4JAZySD
	 nl6xjn5seJf6HJ9RZrUl5vRO/aaaswP7i0KWX+ayAL5ipW8fhNKQdkqg9o1uBc1J6/
	 1yybzcXxaEa+Crk8mAdLYm2RkbaKFcrO9j8q9pQ5f40b5jgUHeEaxW5O9h5UDuPju7
	 bNxSC0eFwWVjdzR98ODnPlIFG4F2YWmXJlrMr1t6ekvmQDV5GzVteIAukm+J4ylqcp
	 1qvn/j2/e0/j8RvYhyTamChKatIo3XjLYnTPFO/mxtjHOJ5UoKwM9vf8CB1HRjqMoV
	 vC7qQS4G49UkQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D49F0CDB465
	for <ddprobe@lists.linux.dev>; Thu, 19 Oct 2023 11:38:12 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169771549286.24651.14866898638723595603.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 997411acca33643fb8bbf260473c37636c828ffea08784547c53ed7a3a625c08
Date: Thu, 19 Oct 2023 11:38:12 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1697715492
