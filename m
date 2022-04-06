Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B9F133D69
	for <ddprobe@lists.linux.dev>; Wed,  6 Apr 2022 22:54:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1649285698;
	h=To:Subject:From:Message-Id:Date;
	bh=aYBiaxPZ6gdDKfEnxB57DYClggu/r4VtAm2SBzN+iRA=;
	b=JqfFx0GlRLF7eSGBjkyzvjnuXPrsKTtwkgDoCdI6rnqZlPagem2PXXBeXtObVrnJ
	39NEJ91pe3Bw9Cop67iRG1gMhu5h4sJg3q306gPVL/fqV3LsvSkg78t68Hr9EeM9qS4
	fAMjuDEJIFPbNoymXzH3ZIzPCXHFE/ciTToQgRjg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1649285698;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=aYBiaxPZ6gdDKfEnxB57DYClggu/r4VtAm2SBzN+iRA=;
	b=j/LqGTY7KFtId2p84d88ZGPZbYKBzSvDMJ57L+R4tWuc3zxNEbVZ/KLY31KiGFtU
	UAPXKYC4WDfByVzt1fc3R3uK215ObECGu/hEV8uoa/DD/tqWJdQt67OYh+jyXcHxSqm
	m0VxAyo1x3dW9jY0OiAiBE1KbLEKmpEqwS7YQ0AU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180011692a2-07a7d20c-dbbd-42ca-9f19-31abe45c66f0-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 089bc7c448e8888ed858a1364ca26ca59dee4ea254a3f1c573f5dfa0029f150b
Date: Wed, 6 Apr 2022 22:54:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.06-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1649285698
