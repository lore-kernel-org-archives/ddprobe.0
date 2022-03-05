Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7EA2B1841
	for <ddprobe@lists.linux.dev>; Sat,  5 Mar 2022 09:36:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646472984;
	h=To:Subject:From:Message-Id:Date;
	bh=t6/g6p/0/WTlR8Snd6244phFnBd+aYp/rXQgIed/OwU=;
	b=mOcyF1Kdo2p0UIiGokbMGiaTkJftk/gRvuoENBP5B5Ihtpk8/phHR5d7XA9/I+kg
	PPgWwE4sxc3+BSWWeGrKaWegBTyp+ybuHqP+2uApJghDNWLw3CQGCnoAhkNKeFZwaEz
	oKWb+nlhw6ZhtlHg9wpE+ATfaXirZsvTlHnHj5cs=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646472984;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=t6/g6p/0/WTlR8Snd6244phFnBd+aYp/rXQgIed/OwU=;
	b=G8eFRC9WqXE95/2pT2iiSsjwRrSwMPvW4ozrmCwp2kfKbMLAJVqBuIF+DQNQmN3Q
	zrX2pLLD1yi6ETeLIe9ZydgyPXEQFMvWm3ppyQx3hUnFGUDw+IatA1D4uMPxDSYO1ZS
	qK9yzsUjFi6q+mkExWrOVwcTnWNRbUP4Bf3MtwPY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f596ff88e-124b5c79-bd1d-4bf5-9520-62dc792a5e7c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 2799d453714a58e905b2cae909989b229a4411cc804ed01fd14032aee7eaaa32
Date: Sat, 5 Mar 2022 09:36:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.05-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646472984
