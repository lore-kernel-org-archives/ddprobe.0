Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 02A32ECA
	for <ddprobe@lists.linux.dev>; Tue, 19 Apr 2022 09:33:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650360838;
	h=To:Subject:From:Message-Id:Date;
	bh=PdpNGfGoEmfsw105gCHCQAfDqNv0LV8pEF2RNHRukHI=;
	b=JGHRBw38o92mnfjKc6YDPFHVo/5+4uP2P0tD2kgqvTzapaQ5FRXYcQJJWLnC5Zi0
	vFV9IrPL51QbTlmdvoavy5X7kwGucp8QyvaM8QbKLQ/ZQL07CA7Q0v9M9hLB8bGpgwW
	t29GCeQOShrY0UKS1xjwDY6NtENWBEFs0OBifZUI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650360838;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=PdpNGfGoEmfsw105gCHCQAfDqNv0LV8pEF2RNHRukHI=;
	b=NFjgcQ/X5CjSVDlgI1q9gya1BprkXBPuXPUA7UwDS8ADIjzwmY/LjeuLxvUaa/ao
	qXsMw5QRSEI/4KZq8/Kv3L+DlEnhAcfgGGLJjRx1qjIpRqs4XHrqLyQYx44T8obnwtj
	4nXpYK/EAkGoJB/CA3MvGyFrOY+Bw1Zr5bWhnmR8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180412be88e-4bf121b4-e649-43f6-8b5d-e566e3413e06-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 43bebfee09ef57586f88d26b01b454e75727e48e7d39849bf7021fc02cf54009
Date: Tue, 19 Apr 2022 09:33:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.19-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650360838
