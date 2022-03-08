Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7E2704A8F
	for <ddprobe@lists.linux.dev>; Tue,  8 Mar 2022 15:51:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646754685;
	h=To:Subject:From:Message-Id:Date;
	bh=aKDcA45kZaPA9kIpBTsVTLYnp0kfxDJm2cqGI2pEVwM=;
	b=PxbrgUTaljmMs2/3MxlDd9Y6RFPmpjS1KpY6+XaSxklTLCYronULFxUrrsLH2UG1
	eovQ0kO1KyT1PEM5OxSc6IGNPSZO3xILlmshCu/70TDFJRPdf6etGuAI21e1yBwRF0i
	m9P+RaGy/BVxNZW9Cb2/tkOPDnEW6WO0Xv/KCpY8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646754685;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=aKDcA45kZaPA9kIpBTsVTLYnp0kfxDJm2cqGI2pEVwM=;
	b=jWgcI0jWxvZe0+6GDUMxznVbH/wb5aUPGZwcRItIoU2PFRLN/Z8NT6WF6Dt+2V6n
	JRKdN1NlKkQle6w6xEq10uuy8Ru2s3iRaUWrTGrp8F4wODhF4+nTDTZUL6mvXQzlYus
	6eWBtrDWf7IS3TlXUeav4Bbp1m+yB3RtJf3Nts/Y=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f6a3a5f90-b846dd70-b16b-4551-8fa3-cb6fbc4362d7-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 65aee1f6264bd0c155a42c0b47e3fd432a9cb6542149820f25ccc28ce8f5ad27
Date: Tue, 8 Mar 2022 15:51:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.08-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646754684
