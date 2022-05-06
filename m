Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CBBF17F
	for <ddprobe@lists.linux.dev>; Fri,  6 May 2022 16:16:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651853818;
	h=To:Subject:From:Message-Id:Date;
	bh=luRtHYLbHYj0RwdVeqFikamHNqh+uxxwog5KTOzalvs=;
	b=lW4d5WdKXSX43L1/n6PcEzpDg5h+4/3n5Edc5d5yn0nTy9kDoTpbNiHFMEOq0fK3
	tpGRPX/stc4fOunzXLb4ij/lRB6t2kCNhw4o8XkRevWId+E3hPL2OZObZwDTKiPD+QM
	EFh+y87cJvUg+4Q90Aq7NgSvOhDeEhnga8JcSaEQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651853818;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=luRtHYLbHYj0RwdVeqFikamHNqh+uxxwog5KTOzalvs=;
	b=QlXOKFlKC6q59KVFle6DzsAxhSrWvXEoG8/I0S08QCXHRAcYURn38QyttL8UQkj6
	te466qFdrRpdlOXT63cUHwuQCzQJhLS94RoD25+9XKMVZz0OY/jZQHzjzG6fDUxjLrz
	cnN1DI38XI5C55OMqz94fgSXPK4D1DjxVqXhRlXM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101809a28f9a1-7e9fd348-0721-42bc-b569-ac209681af2e-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 6a5e5b774b92aacfd9b5fe25e2e3f614d85749d222f9bb590c294269baaaf8bc
Date: Fri, 6 May 2022 16:16:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.06-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651853818
