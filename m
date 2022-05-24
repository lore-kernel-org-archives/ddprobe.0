Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0FEE42561
	for <ddprobe@lists.linux.dev>; Tue, 24 May 2022 16:26:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653409619;
	h=To:Subject:From:Message-Id:Date;
	bh=7qdAlocr72XkV7hoCZa2DEsZv9lOsuLRRswCaRxMVGI=;
	b=S/8xm5bs+oWr864cYK0nBDRifY0AaHLW/pwVqUW5kFNDaBAmrp9+2BweQhwKpCcL
	zIORv5bucyM5w+4NXMnPLnhQhhgtZ+ucP6JS52n0x7eKvdnVRtNZhorGHytdJeyAcRv
	YV+TCYGWkXSKlKGayY0bfqlVnpi2A8ePgr+oR4HU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653409619;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=7qdAlocr72XkV7hoCZa2DEsZv9lOsuLRRswCaRxMVGI=;
	b=eMXjhe218Ob25NrklMtps0j/qciio06ZF7jnHkhCPo5XmA2dB14f3/jHysuvsjD8
	fGcIkTUfhh/MfjjUavxgkAWFKOTiGUr9dyXKyF2x8Nz5WzjIYl3ap4geetEY/+jjaZP
	rcRno1bakrvW9yIBQjO0pwYrTpnj2NgxzOLqkTmA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180f6e49d20-f433ce37-b2e4-45f5-894d-ad6ffad68dc9-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: e78e802bdcf9c506fd66fe9a053b9b93df312a8c2fa2def65994c9a1fc7d61e6
Date: Tue, 24 May 2022 16:26:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.24-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653409619
