Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 94C767E0
	for <ddprobe@lists.linux.dev>; Thu, 31 Mar 2022 05:26:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648704418;
	h=To:Subject:From:Message-Id:Date;
	bh=da2sQxtA5D4G4Jc1xWDxsdLWjeAbw1TlV/Ozxsy8CA8=;
	b=mSz8SOcN+7RvKYe2hM2mhuKv5+IUZUhwLp2e9r1+y0DN0xBxcogzLRs9xChkSGgu
	Mf20qEdkivTlOuEpa405NRWjMiWsJDuswCGybPkThT0cLdllkYoceXrZT0gEVc3LxsJ
	KnnldIoAoylzpQCkGD4juWriZ2Lap7JWxEBSaLjY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648704418;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=da2sQxtA5D4G4Jc1xWDxsdLWjeAbw1TlV/Ozxsy8CA8=;
	b=VT6dqKZ02/vYem3UMlvKm0HwebK2Lb+eIjjhDp1a5nfD52XRdDiseBrpSL1Cy06/
	kapnYCTlZpBUDIB2v9uAqiFuBA0EFiehjI9RKzhoM4Ret3gqGuq2/Ab8kOEBU3r/YjQ
	QPgsw0Xr+rEFeGP6xpZkcBpd8raCRlOictgsgQBg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fde70f1f9-fb3b16da-79b3-48a7-9f20-5dcff072c0d7-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 0bd47c2d6a62d372e2957acc70bc28ff9a9d37f42de8569bc58b64e8441f6e9e
Date: Thu, 31 Mar 2022 05:26:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.31-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648704418
