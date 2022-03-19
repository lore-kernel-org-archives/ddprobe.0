Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F8DF163
	for <ddprobe@lists.linux.dev>; Sat, 19 Mar 2022 15:41:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647704484;
	h=To:Subject:From:Message-Id:Date;
	bh=TJk7q0l+92K+YHSxi2ZraWlzbqZOx/WEbG31OVAsj+M=;
	b=c0/6LThHBzAZ5LBhWV0z6h4XhUup5L2VW2Gg2vweAkyGVY9riDWNr/gnwxilSCEU
	m+HPKSv4GSXj+3qBnIcbgilxyrhZgBPeinQuY2zSVCiOxWoFhlmEpYo+GwEIcXf2SeY
	rgE2X9Ez7jACm22i59hgSy4L7are5E8grlKrWHyU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647704484;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=TJk7q0l+92K+YHSxi2ZraWlzbqZOx/WEbG31OVAsj+M=;
	b=jdK72VsWfbkUVOG8zL7w/YaxD4NMacC0S5couVqw9PClMKz1RxRj40q2JMyCbkS5
	mCFs8JzKjsiMAxTZ8yvVKw9DCqLKUpCaa9UK5Ia9H2MVL0FmyWTlgx8ttUC0EhT4zMC
	+6bz4NtCz8wUhUu8Z+IZ4aT/Pnxe1ItaNjm8UGIE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fa2d72b9e-1661ad32-2358-4a34-9d30-19c9a0c50c20-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 788c5b3f67699aa795fcec25107a80a57a7615336d0ab75ee4bb462e79e209de
Date: Sat, 19 Mar 2022 15:41:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.19-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647704484
