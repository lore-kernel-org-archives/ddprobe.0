Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1025336D
	for <ddprobe@lists.linux.dev>; Sat, 14 May 2022 02:22:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1652494979;
	h=To:Subject:From:Message-Id:Date;
	bh=ufBR+MmFBB7NMhBiuTz8+MWUUq93o2yQHF3OATHHwCU=;
	b=G1UlPzUndWFuXSWoCGNHiC0/drmMRt0PTT1Kpm7x6OBCV/9T2gX/b+JB+oQrRE+H
	64aKhqgecYL9tWGKekntH/QTwcztsU8fhFKIBrt/WuAxoqpmOnFSmbVNv0UhQRcGkZP
	PR78s/2F91S3oyTVtCFXykY+xveRPPooSNBd8BsQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652494979;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=ufBR+MmFBB7NMhBiuTz8+MWUUq93o2yQHF3OATHHwCU=;
	b=JIzi2d/T0kdFOXGeo2zOh3oMRvPBCojDM5UMOOZ7AVhpsG8CZCLst6g1QRIVW2qu
	8wcwfy457AdVgW4Qx9xv8OeDi69C/0jzQp/jEv0GphUaW9j+kcjNpcfimiF49PO0k31
	f68xD8VVgNO/sRnMU3dfzot+GsCiGsau3fRsmh4g=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180c06050c3-a1448a61-1085-4576-ae7b-7e1e416a7093-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a19b0511123f7193e96e9fe985a7c4dd4029525d7003cc6c6ee6680253171a9b
Date: Sat, 14 May 2022 02:22:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.14-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652494979
