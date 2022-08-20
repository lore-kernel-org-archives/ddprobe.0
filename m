Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 62FCB17C2
	for <ddprobe@lists.linux.dev>; Sat, 20 Aug 2022 01:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660958452;
	h=To:Subject:From:Message-Id:Date;
	bh=SrG+UT2qx1T3Ac6ZwlDRSNkXXaoTi4vmRxUpqpYNeSU=;
	b=ZiwbeYKw51QjsEHIvHLqncePfVlt628Xkx4lLuWDpvSx3VyITyfDj2vX0cPSWvB4
	xJ/sqBTHnXnQW0+iuQz37va4JPthFd32FuDna9HMXbiCDitmJsxXIp9ykLPWAchPRIL
	w7aUeibHtjY+cdzY0wy5p3/ddpm8CnkjBRGblvi0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660958452;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=SrG+UT2qx1T3Ac6ZwlDRSNkXXaoTi4vmRxUpqpYNeSU=;
	b=JOfwho49XKpeDH3007odupLREhcvaiyGLSbOGEHm0TePm8lqU/t7PEPWmXrRQ+BR
	Uam10MahS/s47YzobFusdoAowJpEV6RIUgihd/AmfAHPoeoUm6rtQMsD7I3Z2ZsLJXQ
	kppgpmCL26BSyvsqFf8zMIS6Axu5N3xT1ewnPkyA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182b8d6ab66-df447cb3-cb3d-4ce6-b02b-ff2abdf3f89d-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 6a6b6e2b1e63ac2d51c78bec6c43836a3e03b84dd00fb3505f9335d43ed7879e
Date: Sat, 20 Aug 2022 01:20:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.20-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660958452
