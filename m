Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 99F587F
	for <ddprobe@lists.linux.dev>; Tue,  2 Aug 2022 15:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659453653;
	h=To:Subject:From:Message-Id:Date;
	bh=33aFsMuHukQUejx5gHR6806eS7MogbNYhTlm5KHKjgI=;
	b=Cos6hTxqFvDl/ToQaNSt5MSAT+PcXsvSxc4KUC5n4Xy6DMyAjuDqjDL7MWb92WlG
	tmNjLsA2rsSpiSedGO935OvD8eG78k+HB1Zjy2YiSEvXbU3PrIM62LvdV3kvyaeVfut
	Ot8H8xTuODqKaO0b1NV9Fy0o86RQYFCEYg2PDQlU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659453653;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=33aFsMuHukQUejx5gHR6806eS7MogbNYhTlm5KHKjgI=;
	b=hHH9+CMEgSOrn0FBwqpQeoJbeE0UcmJlkLsU3ycPlJpUaSOLHN6Zy+xN/+M0XFSA
	cz2YjXmCK6Xqag3DUagtcF6jQqLJF+KJLSZY8dTrkUc63wTOrrHqDk8gserV7cnBnYB
	a3AMX/3nJeR/7OZU5Wj0fMk6cobNQscU+Hq06GOE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101825f253e97-3ea82c70-769c-4a7c-ad85-1b644234b24f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: f716096c278031ee8fd9d24810e1d78ccfae53ce43bbf796a17fa245d375687f
Date: Tue, 2 Aug 2022 15:20:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.02-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659453652
