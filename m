Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 94505EA4
	for <ddprobe@lists.linux.dev>; Mon, 14 Feb 2022 22:26:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1644877584;
	h=To:Subject:From:Message-Id:Date;
	bh=ju42jM1Q7AG1D8sWh5fuaoXnD+6+D3dTeqEKMxPkWWs=;
	b=aIXRSZpFA9SWLLEk7QPv/t+atRISoudN1b4FLI+YGJyY2bm23h4V/oppzQQ9W/tY
	ob2bNW8kj13l31QHLfLzSzEl3a5lN/ISJDKoIyxSOFCjUDkj/FX3vyweFs6B0ZY9pCd
	fvg2SMHZ42qBMWDtSkIrV6CmxwmQ5lLYthPeGmxg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1644877584;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=ju42jM1Q7AG1D8sWh5fuaoXnD+6+D3dTeqEKMxPkWWs=;
	b=NMIoLeLUfY/Hgx4vOxV/ePHmfH/D/FhcI3zjXa9kfTAfqrS7rN429t9PNA2MdFLU
	osXuvUiKX5+9M78LsmAvDnabdf9uzgXH31BeY97KFKFBY8PgAS0EvovryJohJJekyaB
	BV73wP0QeNWE/dE8MEw/ZHvquRRan4V3jWhD+OHo=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017efa581987-1e132c9c-0384-463f-aae6-fee4e17db399-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 1cbb039af497fa8c8ffa35b6705741c462d9765815a98ffd278285771be67862
Date: Mon, 14 Feb 2022 22:26:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.14-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1644877584
