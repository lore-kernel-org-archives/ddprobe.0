Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B97B1FBC
	for <ddprobe@lists.linux.dev>; Sat,  2 Jul 2022 10:46:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656758812;
	h=To:Subject:From:Message-Id:Date;
	bh=rDtPIbGq/bDZ/C/97Tje/IX8TffUhA7LllvB1QkkUx0=;
	b=i8336qgnrVjLZvdem9LuNsI+6sloQBF/YCB62hniWvcQzGwBX4GqYQWxVVNxYCBl
	ExwSTWACgdrF6MYmybUNe8cMu6gAbQWW/my0gvlYBp8kUq1dYARgc2QaIAxTTGu1fJU
	QGRf2umlgsdafvYSI/zwOEH1NiF7d72vNUGq9td4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656758812;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=rDtPIbGq/bDZ/C/97Tje/IX8TffUhA7LllvB1QkkUx0=;
	b=hYhqUr0sfsTf8CbvhTFAzaktBR6u7OXAgwen1Vfg90HUbEhdTTr9WDFuljAgimqm
	Ozo+R3ycWdsCRXwTaeW8D8xNfoCzUSPzy7OiTIHNv6kvjmOa5QJGp9tBNT3LFNIpn+f
	gmCRwWzvsexC1SZ+DfFUb5AD3nv1O48DUUGHKNzo=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181be853e86-bed00e55-4c38-4391-a3a0-b263d5631cd0-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 35efb7976551d127bb2c3dee0d98273a2d20d9ab924226892fc3086c69989cd2
Date: Sat, 2 Jul 2022 10:46:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.02-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656758812
