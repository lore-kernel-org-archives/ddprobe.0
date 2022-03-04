Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 60A757E
	for <ddprobe@lists.linux.dev>; Fri,  4 Mar 2022 16:31:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646411484;
	h=To:Subject:From:Message-Id:Date;
	bh=d+iBDnrDDoJ+v2LSF77DdxLkl7rr5rst6iNbGOIF7W4=;
	b=LjmjwYWdEVEVRRvE4KtLb75/nF0FvWY8Zp5t4JJuqqDw0ZfVgmUzfaJPjbOGH0LX
	lY6iJK1C0ulG11bFWEHyXda/GszzIUtWbALiRDQkMjv0YNQHvtU5gDp2SnhzL/tw9DH
	5H7yXs3M59IFyVTaUSlBCYboxU7BUT+VYporzfu0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646411484;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=d+iBDnrDDoJ+v2LSF77DdxLkl7rr5rst6iNbGOIF7W4=;
	b=JDwWlFGt+YEJR2BxRbNV/ATGQxNPPEXrj8dlceIlsxBWIai4fnydjz0MxeGpyWZ6
	HjqTXWqBtq9kU6Xka+56XIEB4ya/XOhO/2lKM3YJ3cphWMlizN7m7DEmF0iLFZp/p4g
	Jt4AQzpPeGscy4YEqI5Vj8K24/E65x8ri2Myalxs=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f55c58e62-957372c6-3666-473d-bd17-535864c0eb8a-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: c898c1cadb60511bdd5cad0e6e00b2e912d4504685c331bd209226aaafdf8b52
Date: Fri, 4 Mar 2022 16:31:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.04-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646411484
