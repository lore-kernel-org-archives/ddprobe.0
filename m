Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20ADC3D79
	for <ddprobe@lists.linux.dev>; Sun, 27 Mar 2022 16:04:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648397098;
	h=To:Subject:From:Message-Id:Date;
	bh=bmV/HjhQVI5H/E97Ddhle7EfwMhSQFGao+Oeg0EjmPw=;
	b=UpZecHQ7gI3N7ydkCRSyzK2/1qdyJ/rw881piGV00S/+74iVqYsaNbQDdoAnjt5r
	QVUGVPrGK+GeDaWBALY0pk3SDanPu5PvDZxR2AUKLGfoU7IKaWtuBNzhu/SxN7jT9lW
	gwZwDxkRZ2v+ztiYhvBwtSvFtMmZcuOXi7x6kBOk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648397098;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=bmV/HjhQVI5H/E97Ddhle7EfwMhSQFGao+Oeg0EjmPw=;
	b=Cx195wdceyk+jcLTwle5OB+aga6LNJpsbIjsSTcK3+TiYty18PgeIUQDUYjEd3YI
	ribuXbtA0pgejkV0YuXBtYiVhwGsqHQ67t0ZOcWHh6R3/uD8sSv2MvM0LUnki5FLeKB
	5IB+WDki4/ea4Qeys8byVJan/MmVlfFWAtRTxwqA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fcc1f9d4c-415d4187-a734-4f36-a4b0-0499764fbc25-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b380c0f713ff3039fc07570f00b6df09f79e034116b4ec965c7b0697c9789af9
Date: Sun, 27 Mar 2022 16:04:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.27-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648397098
