Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 514F7EA2
	for <ddprobe@lists.linux.dev>; Fri,  5 Aug 2022 08:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659688852;
	h=To:Subject:From:Message-Id:Date;
	bh=sP/31Lz4IziiTm6bW4TZ6DBXfW4VQ2p3afjngA+pc7Q=;
	b=NUHx78JRiXsbjeEDyS3bbKDIU+QEoXqUDNFI12mJ6yAgKp6N2XD25QHpGLvvqkgz
	5XHiL3MqM+HTSCM+rELh7sdWHdxTuzR1HCG8l6T4YVitmJSyXq9UPhRSLnsAP+ZobJz
	pxVgqQrosQoyjxe9TEACAsOenH0Nxh6Qp5Sjv7bU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659688852;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=sP/31Lz4IziiTm6bW4TZ6DBXfW4VQ2p3afjngA+pc7Q=;
	b=StiCJ05Qfu0Y1yBI9+2VdWrK+TXBPEGJqSq18kABu8bU58eGLNFetLDEYhLsplz9
	nYgBzcHMLelq74hu5y2SMbbtRo3FdOioJne1SrCZp7402iBqovMytcD1PGAcM4ZPEur
	8IMM8Q380OpHWbpW6VWukapIwCyhGIk0Ro/0RD54=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101826d2a1c3a-79e5ed8b-49e9-4313-bc1d-a2b6baee87d9-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 05bed8d570d358f7b335baa550cd0ce276cc497a9fa7ff0077adbebec4b9aa67
Date: Fri, 5 Aug 2022 08:40:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.05-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659688852
