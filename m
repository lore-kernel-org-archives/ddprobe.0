Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 54FA47F
	for <ddprobe@lists.linux.dev>; Mon,  1 Aug 2022 00:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659315052;
	h=To:Subject:From:Message-Id:Date;
	bh=obvniKi026YGVsAYbEchQvrZBdmNJcjXuFROTh3/Lwc=;
	b=eTLYTQdAZoSW4NYHjrBjfuk9CuyIfw3Tu4dDr6Sf64302HPe368W5kllL+ujiD1M
	hKatD/HQ6fUwLgdYQo4TwsyRDV8ccaIOzocPaHLdoPormOK6LAP0oA6JBNwzuTgP2kR
	sNbCX/V3ImDi0rnZSgofwICpoWzJ7FsnjAHbP3dc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659315052;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=obvniKi026YGVsAYbEchQvrZBdmNJcjXuFROTh3/Lwc=;
	b=cr08ahUHHF+zhsdnlBSZc2VPur3l6YCEd4jZa2nkHERipUsUDX0VNXSun/6E4oIB
	C8veI5BuDJI4ziCEsyAMA0AIEQF2PzDLzzWHPYszExUvxZXIH6Dyvd993rwiF+S2BpR
	ZNiapD9Jmi+YG5ISh2yaYplQa5G0txKnNHkbbz1A=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018256e25ffc-1c90d940-1b8a-49d3-945b-206b29b43d7a-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 7e6726bd949e0d67329af08f473e866a29c57efb8410cd1335a186bbeb40cbf4
Date: Mon, 1 Aug 2022 00:50:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.01-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659315052
