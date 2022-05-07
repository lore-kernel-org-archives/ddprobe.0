Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0EA387F
	for <ddprobe@lists.linux.dev>; Sat,  7 May 2022 13:00:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651928458;
	h=To:Subject:From:Message-Id:Date;
	bh=XbfgUJ6JC85bWW5jHZxNZzB+LAThgoUEORiXgl1hrmE=;
	b=OgdVcSpw++ha33Scy8MouvtWh0RM85GNbBYm6sSYEak4SfYrDRuvrb45HMpL8NgU
	cSKwfktZwEN54sP3PknvFT4cE2AIYnBOc/dpwaOLgy/e5JRBwUMkyQCs49u7ddLnoZv
	/i0tIIjnpjCRd/uK1Ck9JVfXISm8ojaiEykwnI7U=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651928458;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=XbfgUJ6JC85bWW5jHZxNZzB+LAThgoUEORiXgl1hrmE=;
	b=U/5rupTstdQXUdo0XBN2Zaus+uu6tB3BZJpvqLQrPtKkQwvMMrypRtKABgmFehuz
	76q+6ZTZ6qrWiga+XZNmHw4eF2eIKaUee9/O83RqGw/97amvCxdxp40nWSbiY2Zk40E
	5Igonyct1+Mb5Kunro0Frjv2jFn+Xtip/CdRS/X0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101809e9be409-a0073a9d-1287-4c58-a724-84208f29b0a4-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 1b34a24bc99330a2036a372733ce0f5df2ef12c7178d7ed2168a373d366a3ef2
Date: Sat, 7 May 2022 13:00:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.07-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651928458
