Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 47B3AD2F6
	for <ddprobe@lists.linux.dev>; Tue, 14 Mar 2023 22:59:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E37FDC433D2
	for <ddprobe@lists.linux.dev>; Tue, 14 Mar 2023 22:59:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1678834745;
	bh=ZBU1H0vMv0A+RzXin8RiCBiylMwOGEY90WWvhvT8fXw=;
	h=To:Subject:From:Date:From;
	b=q9E1VKocLjcAMrF5EiqvyQ0Gln3DtUIiLpG0vJ/1WyWdlo4zcjWvxyogOlRWNXGl7
	 eyhNcqUdJ5YRJIl8eFv13fHqQWLSFocKMkJdlrEe9rb8EGQuk3EbyaP8vjVPXUzCuz
	 fu9p+N0GqRB4t1YsQY94LTqZP1BfDac6hEPrOJVlNF7bo2cB/uXbt9fPyXtG8x9013
	 kO7jbgiRJVY9AZuXC7ujpRVl8r1jStxacOq7U6N3qFTCLY9eZJFDQz6mXT7HPxb3hm
	 nFzUHWJe2mh/bja5GK8Biy97xO+/eTA++qfW9PIYiPt3ejrH9kPcPTNgZerhuO70Sh
	 IlG/cAlAT2F7g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C6882C6FD1F
	for <ddprobe@lists.linux.dev>; Tue, 14 Mar 2023 22:59:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167883474580.10309.11972949957849670199.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c4c844f9d70d730d24222cf109622331574b61ab77f29f2831dae2a7b5dbfc99
Date: Tue, 14 Mar 2023 22:59:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1678834745
