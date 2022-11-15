Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BD2497C
	for <ddprobe@lists.linux.dev>; Tue, 15 Nov 2022 00:30:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7292CC433C1
	for <ddprobe@lists.linux.dev>; Tue, 15 Nov 2022 00:30:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668472254;
	bh=GZ1oF/J0DKYYnExp6+0VONsy+3RU03GjNFEHWbnnL38=;
	h=To:Subject:From:Date:From;
	b=iC4hjx3cl3vhD6YmpxFE4uBYaQ/YZ5d5jTDS8QKd1/T92oHqlK8qfjeYQgvrERKhR
	 6RYdBQsQ9/PG6vtn1lOj4EuquRdqZE0skUG4tqaLuktPJdGsBAt3eHzZW8PgUZuiEe
	 KTVuZ6MGOstd/2rZxth7CxShzFU1jEpKeRLlF7ogYWqEAIrn0Xd+/mJQwfnZasIqzo
	 O6aNGWD11wj0pv226vaH4KLhAyrIbz5Mvk4ljv7shqxeiol52tXagAda+HJfeDeobw
	 oGeA4fgBgs/WtQ9YWG0rlQoHUBCWKhzjf9CPs9iMQ/hKDsGvn/fmy2XleqQg7w+CMt
	 K6Kh2N53pWGgg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4F6CDC433FE
	for <ddprobe@lists.linux.dev>; Tue, 15 Nov 2022 00:30:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166847225431.31560.8226206314012726920.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 42beca7e82c1cf0dff0b0cdd1a41aa5f6e51f90273fb34545061c15cea72e333
Date: Tue, 15 Nov 2022 00:30:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668472254
