Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 329241FAC
	for <ddprobe@lists.linux.dev>; Thu, 23 Jun 2022 23:26:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656026812;
	h=To:Subject:From:Message-Id:Date;
	bh=jtCuouIKmQFANWRcwGwQoT3/uI9HVNIGAc5pl4au5AU=;
	b=kGmSdLKOnfTCRudbciEMWcWzkbWWNOImN6sYtYtSD29iGXDe9oFsnfpGs1hV4ncD
	MDxzrurPW6sLaChDq5JhAGEscuQ8Ny6h+HAY8qNSnSC3InmlFoPy7ccCrOdKhfOpcqv
	+L7UHJ8j1p+B3HQYit52cenTXAnrVAxIAoQUx6zw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656026812;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=jtCuouIKmQFANWRcwGwQoT3/uI9HVNIGAc5pl4au5AU=;
	b=JVa+YeBzWzfPxaMTzNVPCzhbps7SGEtAHt9wZM7E+yNmn6EEVqSbVTLKR5mHfECC
	6vtbmxhLDUTaxu+C2UVeLA8RzQfXng+r4y+NAN7L/ojb3nDd5G1F/IVkOiSq5mEB1Nz
	MQWKU9P2BOesavTw1KQM8Zg8aumgLUH1WCrjRiX0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018192e3cf72-ed7f01cc-bdd9-408a-a6a2-bf368cbf9811-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 738f2af6cc7110782e5bf234b198d9ba50afb5d4738fedc2d75436c0631e7441
Date: Thu, 23 Jun 2022 23:26:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.23-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656026812
