Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A287D7F
	for <ddprobe@lists.linux.dev>; Thu,  4 Aug 2022 02:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659578453;
	h=To:Subject:From:Message-Id:Date;
	bh=pEPIcOTh4SOMBCl3PYDR2vovPFqStNrkTUK41/IvGbQ=;
	b=Ro9EVWv6GkrTXMo+zXpW/gFhqajEgODKZx9vaxfja9tY1SUI30Hkfps3rExTWfhY
	peOr3NYnpnWtM2s2mcGqwaERkzchODB1+VdAbN1/AEBjjbzHW8A9jeaBTCnaYw4MqII
	F4EmHeWJIOTueN7PuuWnH2cEOKsMBWDDULnavpSk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659578453;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=pEPIcOTh4SOMBCl3PYDR2vovPFqStNrkTUK41/IvGbQ=;
	b=ZzjDHBrhECC2xN2UV3W5hyLAeV/Gad14GaSOOBN/x06v5o5vvlUo0UC1QASJ86e3
	CnWHBT9aBlhwvcih0t0uRvjbOeFiRsaa5M6gaahuhSPt4g3NMqfSnNgGISRw4pXXI51
	w8yzg+PChAn4ahdF/iFtkHSU8gPPyMf7BXycj5ik=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018266958a2e-89637bd1-32ff-486a-9e7e-dd846138eace-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: dabd0153bb05c690130a38a246f94092c39d9206af2625e98f8c7b60a70bf6a2
Date: Thu, 4 Aug 2022 02:00:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.04-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659578452
