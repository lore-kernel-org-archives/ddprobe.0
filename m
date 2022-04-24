Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E7D947A
	for <ddprobe@lists.linux.dev>; Sun, 24 Apr 2022 18:23:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650824638;
	h=To:Subject:From:Message-Id:Date;
	bh=Db2BseXGAukNRoUnK6xOr27UpM5MPu5wBZOj/1G33+E=;
	b=C6pfRTOjf6sL06qPCY1PjhM2akImSPhWPRJpul4zgJwWQODvpzLkoo3cJP78/dRl
	e1o4PSGSyW6OSPvPcZz3PtaZqTeMgAzc6zZ05nFmpVdpAm2PR6rBCP0WsBzIUluL7vq
	HIIk53yMrIH6DVoPx18CN4qaZJcjTngKe8b6PeHI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650824638;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Db2BseXGAukNRoUnK6xOr27UpM5MPu5wBZOj/1G33+E=;
	b=UF2kpZnnYBkeM2/+5KEiLb7hBZ0U8Eb1LAW+7tsMa+EavgMx7A13jd51vLlESSQu
	IKHDUDUxFqI5h5XasnieI2sByvDNFEpOcyN31YFM6tdDfzSN9x/DUuK43bnr0MOaiL4
	NlclhHx5i7EbgCofLoXqW/j+/h6WQHkP46Vpt0Gw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101805cd0ef5e-5e03e079-323b-4594-b1b3-737149cbba44-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: bab29dc3c4e26aaf5e18a8e3580e245f41cd7f780f1bb6fc2df2369ad8fe883c
Date: Sun, 24 Apr 2022 18:23:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.24-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650824638
