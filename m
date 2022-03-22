Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AFFDB7A
	for <ddprobe@lists.linux.dev>; Tue, 22 Mar 2022 01:16:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647911784;
	h=To:Subject:From:Message-Id:Date;
	bh=jaxD//fPXpk4+NX6eF8YRk3T3obTg3BwheLE9Sf4akI=;
	b=QK5aiD41iKKBdqU7CaBJGCQwLB/yaTIewImyVNyQ1tUNcHNcuvvDNbvskD1/OMOn
	aIVRYIsBV8UHglsiuewMjJCDWNsfgdPstzFjza8Vo+ZqXnxwvj1pIWC7dzH7+PP915G
	Ou5SsdHajyTQzK+0vnIFtHfdFCDlUrVB8BIYpW58=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647911784;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=jaxD//fPXpk4+NX6eF8YRk3T3obTg3BwheLE9Sf4akI=;
	b=UFDGcAKEcv2pXxFCpk2jY0tYpaCcTNCGAGb3W/RgD9FzWseRuge1MaiWFYMsGYZ8
	yJc/b3ey+NwGIQZ/KP/0x6puQKInJL4pDT/lg3rbJ5U54VaLIprCKugAydp1ES0Jrpq
	qmCcf15jIvVSYSqHvb2KlqKhiNI9kKHgchkwuptY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017faf325136-77dd6ca7-4c87-4937-a741-8fe334c7815e-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: e80955f70505d7e176e017b1be2e497a92c42a6878539a6772e46d712fb168a1
Date: Tue, 22 Mar 2022 01:16:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.22-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647911784
