Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B057E2581
	for <ddprobe@lists.linux.dev>; Mon, 21 Feb 2022 11:31:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645443085;
	h=To:Subject:From:Message-Id:Date;
	bh=N97TgWguBJJur2NbDyQbW9IGoVD7Z+JV3QeCs9UIyJU=;
	b=SQ5DT8J3qDuvqoA7C3f/CcqMKIpwtr0mmDF8DXLbCSeiGz3vjfIYck7Heo9hJk0L
	kGn9wczChweou0zaDZBz+IFRtdSdlxpTEnE7APOlbTULE0hmAQOvoURfcHrsCHlgCSg
	2eDYFMBPNosmhl8SJs8rnbjnjTpCEDqN/IMbZiQ4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645443085;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=N97TgWguBJJur2NbDyQbW9IGoVD7Z+JV3QeCs9UIyJU=;
	b=OVIrpaULsms3NmgHgA3VUFdyshs6Annl28LeiagR5FOP4T1T//oyYCO8TLkPEQ3n
	h88Yn8u82/O8nW5vFaIffCMZp/+nqGrxkrpeVOsssN7DrCHmtznDqwNCHbHgoX7iRWc
	kRaJ27OuNaVKIClqSTI+jspYIEE3OuXUwq+sufPc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f1c0cf210-52c217e8-cb9d-4aec-83b4-ab25c67bec42-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 65271369a04b76b2bbb0abfc8ed155856319fcfbfa0516fa06868b26c579177f
Date: Mon, 21 Feb 2022 11:31:25 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.21-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645443084
