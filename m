Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C8F0E18D
	for <ddprobe@lists.linux.dev>; Thu, 10 Mar 2022 16:16:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646928985;
	h=To:Subject:From:Message-Id:Date;
	bh=4YgSYjm3oTKHHyMSmTUY2qkGeg1AGoELeIdyhqX+ybE=;
	b=aG/bOiBdha2qKCdPUC3I7OSitAc0llTVifTXUWuHsn7X4ZRr4oDreqwFzuteZhKi
	4lldxV/76/VTE8qMJx7rsRwvrYKmi+eEKGlvIX5l3rl8wipWqAg/IpmaUax3SFcyv/Z
	Mkqik7LCcetocTERLA4K+4yZh1eYI21YSYQTsIE4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646928985;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=4YgSYjm3oTKHHyMSmTUY2qkGeg1AGoELeIdyhqX+ybE=;
	b=iM0RHSSa1u4gMDvuqTMdSmV0bXMwJHw+KKKx6MFQditnNHWNxrO7201ChZ3HFp64
	TWNDH+cwRLPmn/1NdvmRzF+VvnG/acb7ds0fFNy1BKXsFfetPapy38g8FRklOG24itn
	HTMpyqHgBRGf95Iw+FwPbXH+8dkZPGGk5RgpFpJY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f749dfb76-acbe5d6a-c37d-4a8e-b14c-3a835b8e4d79-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: d2729783d26505f90b6a3efd671aadf6939da98de4d1fc03701e30ed54b951aa
Date: Thu, 10 Mar 2022 16:16:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.10-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646928984
