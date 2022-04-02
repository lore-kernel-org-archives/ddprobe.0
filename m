Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ED7161363
	for <ddprobe@lists.linux.dev>; Sat,  2 Apr 2022 08:52:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648889578;
	h=To:Subject:From:Message-Id:Date;
	bh=Xgy1s9q3utCKN/bFShrtH0wFAggvRIjiYln+35Ujy88=;
	b=mTtb/Mb8iOKs89mR0T+8V2bsgCopVnr4/NhPQAzwSY1T0PTRdezXkK0fdJGqnl4G
	R6M7z40wRhNHwTIvc0xcVfI0IQ3Clm8dSq7RSNg+0FFtBtrVlIkQH5NkI8OMpph7lHV
	uHHvXrTWTeX4DwlqnrilV1DwrlgYY55b5c6niMUA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648889578;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Xgy1s9q3utCKN/bFShrtH0wFAggvRIjiYln+35Ujy88=;
	b=Q2ntjZR8KfAi1qEfjZziNnU1SpZLVsJcOSVVPvG5MnnRM3mppKX9lZu9gnyiLvbt
	4Q52LBRRVHlnkaywnwlCsV1lr/V16MHzg8OZ6Yc2uQ9T/9CGHTdBwdp1Fj7mW/Ym3IR
	+69hTIftp4FGW6/xUq21+vB/uZRt6VjQjQtzea4Y=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fe97a4331-3a12bd1e-6d20-4fd1-8218-1b82dc68c3f5-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 0ccce7d4b21fe23760b7501fab59f4c599b2c20db41ade913a94b51429cc5cbd
Date: Sat, 2 Apr 2022 08:52:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.02-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648889578
