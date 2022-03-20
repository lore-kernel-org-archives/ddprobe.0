Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AF49D7A
	for <ddprobe@lists.linux.dev>; Sun, 20 Mar 2022 08:51:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647766284;
	h=To:Subject:From:Message-Id:Date;
	bh=adbV0SG3L/0wjXHavl4QmuYWxaROeYhnYzxerpOKUXQ=;
	b=W2gK/a12YxE5hJcUoT2slacajmByijRZv7duH1+2K95BT5mf/ytELBwEAHkwLoAm
	zdHfxXlonio4GvoqC76jEVg1V2VFVTDF6nE20UyLcxoIyc/RucIzrow9DO/uSwLA8GD
	ws38XjOFiU4A6tTsa4MLD8xn64eHaMAB/Az1X76M=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647766284;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=adbV0SG3L/0wjXHavl4QmuYWxaROeYhnYzxerpOKUXQ=;
	b=GNpJIkrvQDTNurT3Ld3fvcaHXTXUlxmjNxHs1qQGibCgFXCMsBCylfNvDXalLEvE
	51L9TaBaS6sdgr4hwnOAuVFvIteEBKfXTStjTQJeDPGpgZVDsAWzQnttAOvf3YPjJqO
	8QLTqtTKlFwHePmLc2QhYkvgTF+2mLVQKfK94yLM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fa68629db-4ee0eda9-9b8d-4a61-a797-3bb1bd123930-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ee2a2be215b293eedd21d3694886cd36599c32ed1cc16acf515604e66417ab04
Date: Sun, 20 Mar 2022 08:51:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.20-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647766284
