Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8826F7E
	for <ddprobe@lists.linux.dev>; Fri, 11 Mar 2022 04:06:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646971584;
	h=To:Subject:From:Message-Id:Date;
	bh=+SV2hs38zlOWQDDwvF9R36Py7dASqBXcBVGpPxthTpk=;
	b=E+uf8YOuTJmdSvF39fvp9fArmZuNM/4QS1RqsXDLRUpLCPeyuft2oQiPCcJc7KJ7
	c9KLX9BGBhp05pP0hPakPZJmDkAlHZwQNFBV7wB7vA1qEaozrdnX4313Kb1H5EPlQtw
	nCQRddlboPBIzZgp5qdcqD3xbvcXXTCeTNdWZhjw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646971584;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=+SV2hs38zlOWQDDwvF9R36Py7dASqBXcBVGpPxthTpk=;
	b=HCkr/Ek2nrgNZ8v/hvX+CTY+nZ2E0SMM/DTrYpAYHL5qYyOpDlvdr41/f4blU2qJ
	JUdX9arPsUtj11xdAWUPxsAbhcWORXcm3Wp2+AsTkmVStfOF/smY2WVMiiKk1IDgRdA
	ZkG6q9ycYHJba7/IKJxGZiWZhqfGa0qq+D2dRozo=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f772800e9-2df1034a-1865-44e9-b6d4-dab94500513e-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 62195058771f2dcd76aaacacba916ccc206cd88f6aa3b9984fde0dcfb30f9904
Date: Fri, 11 Mar 2022 04:06:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.11-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646971584
