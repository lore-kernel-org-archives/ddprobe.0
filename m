Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 204C03212
	for <ddprobe@lists.linux.dev>; Mon,  2 May 2022 21:19:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651526398;
	h=To:Subject:From:Message-Id:Date;
	bh=m3o4o+TTeqgM7ffr8EG6Tg5Bm+eV1xfDIZbX1ZpeRio=;
	b=c58ghjceGdkfNdD/lLohH3aqjf4aiJGaE2Kv1TtMuUL+nOHLxHRVtoSa3W4/NB+W
	1I6k/2fs/r6QxDOfpIrGgjVbSLlx4Gg/lQut7QpS/T6TfGbgQeg1rgULk4sizkTiSNu
	22CJV5OmFZqcBds3XMRBCGKsGtLXxBG28JZACkvg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651526398;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=m3o4o+TTeqgM7ffr8EG6Tg5Bm+eV1xfDIZbX1ZpeRio=;
	b=PMjKF2NJXBhqzFxM+kqt+TJzjl1o5qBiPnbXd062mHXrHQTEY8dY9dCu7KN8lLWX
	1S6o9PfZ1hrn/YmofngqlG2H1E+yGHzQujGPEVPKedRa9S8e2t0e6dhWZ4yqp0A1SK9
	UqoINIBxOk6PnRhICMW+hfN9kYE/I1YaepSyA0VI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018086a4f14a-46de7746-ae85-4aff-b5d0-b9980eb47dca-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 38542f26de3114413a309c7532fae9d5ad999f8c39737716a617a29bdf3f36e9
Date: Mon, 2 May 2022 21:19:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.02-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651526398
