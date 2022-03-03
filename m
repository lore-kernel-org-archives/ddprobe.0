Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5308166A3
	for <ddprobe@lists.linux.dev>; Thu,  3 Mar 2022 14:06:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646316384;
	h=To:Subject:From:Message-Id:Date;
	bh=vhslk0OlluXYl+oVxWCwZkK8tm+qUmU4tShDSWLVpHw=;
	b=I5ad3R16OMrBMW7oImoiVlafVZvVdwKumpQxtOyLdmtNCspnRaBILpcQE4SVUmF9
	MQc9OApIGRlpkj8Z3CVBCSYszno15ghfun9+traCoW3OatXc3Y8yOjyJuiUaB/TOASG
	PjqWDaeUzZnoK1pxmG33ozoV2WHia3HKpdwVFmGU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646316384;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=vhslk0OlluXYl+oVxWCwZkK8tm+qUmU4tShDSWLVpHw=;
	b=iLyru9jqerHM5wIA+EEuKcES5gtUidgkKJxolMjP57QjblJwsLglQ1Gzl1tIkR90
	NKii+m6jN31mY0gPsZE1akKOp6vn3jJLnaz+tZJsZ+Vdq4VGPc6og/hgifSDselOYMO
	LwdX25LTISbQs54iUYqV261mG/9xNSiz3k3vN6N8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f501a7211-04dd74f7-3fad-4885-94eb-7247242324c4-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: f550a138526104dbc947165338ae4a82c9573d73159822687aa1f80fd81928d2
Date: Thu, 3 Mar 2022 14:06:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.03-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646316384
