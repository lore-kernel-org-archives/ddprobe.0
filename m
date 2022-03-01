Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 76BA57A
	for <ddprobe@lists.linux.dev>; Tue,  1 Mar 2022 00:51:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646095884;
	h=To:Subject:From:Message-Id:Date;
	bh=I53p6zUy+x8blGCRa1HVT80L5FpbPa+1SZK8PvqW4Ng=;
	b=kONbPZAKGrbr/SZvlvyaglGj/J74g/lFZ9lrwc3SpMroCVTgQ0nCTIX35PgV3IL5
	Tp8uG5oLtAqgaAv2+5VhsE3uT4u4hTJwKaj6tETXttq+trwpD6/tnSYIuvL14txasOT
	MBvqR8fYrpMjnD2H4HwvcXSsapBV4QO2LXyMA9K4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646095884;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=I53p6zUy+x8blGCRa1HVT80L5FpbPa+1SZK8PvqW4Ng=;
	b=lLB7hOTSmdXwopg7fdorEBIKRDRHyMGLth2NyiiUm9SGEHTv24F6gWqPOgy8LLCI
	7i1cLW0BZOajOWk6BLufW6XUphdoBs7UJH17MPuXHCHsa2ia/TKngRjuTzfvFPK1UPU
	OSw8jWGNHI9+VmnpJCj4IsrWlyCbajHeJnLvoy/A=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f42f5e1c9-0c9705a2-3620-4e5f-9214-8ba3ac339c73-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 36c5864becd34de7bfd0eac710b67e2d861ac125dde14f78461c6585c23a11f6
Date: Tue, 1 Mar 2022 00:51:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.01-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646095884
