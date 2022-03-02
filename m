Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BD2AE2576
	for <ddprobe@lists.linux.dev>; Wed,  2 Mar 2022 08:21:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646209285;
	h=To:Subject:From:Message-Id:Date;
	bh=AsfUSSslip73eJt8Y6YzIOF2oli+bRkXtLPmbuwahMY=;
	b=PnUUrxfdlPMRIkdcX+dmkq6uyhOinJ+igo3ASe+AlJN+8CY4gVYTUpsT8bReSAsD
	sIyqkqN8uc2Nxum0GWNllDpKGj+eSUuhR44u9oiwGTm4xNAD5twGrDeLtG5+0nhPq2c
	m8oxRDxGHEv+ioUqduUfP3/9svKTK1GUPbq1zp4M=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646209285;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=AsfUSSslip73eJt8Y6YzIOF2oli+bRkXtLPmbuwahMY=;
	b=EhyfBO08oWYiPZ83eiFZ315/i1uckw7SnCz9/9gxzw3l3QOt1yhLI+vFeZH2irFJ
	iWNc0TZeE5kclRT9zwwLSv9vv7FpF4YAPgd9XICzCFilId/qnWUg3Hw9PX6RN3NZ1Zn
	90yXsOA1Zbm31nfjkYqDzUYP6kAywgYoY1frKT0s=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f49b83a86-d84fd040-13e7-47d0-8966-ea49beabb5b7-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 395ea48c2fa22ac211c78c1a62cca99091665ead4b39a3f781da7b9e61c55fc2
Date: Wed, 2 Mar 2022 08:21:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.02-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646209284
