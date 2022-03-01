Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BEAC117CC
	for <ddprobe@lists.linux.dev>; Tue,  1 Mar 2022 20:56:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646168185;
	h=To:Subject:From:Message-Id:Date;
	bh=AMFKI741xTnuJTkObJNp992MiJ/2cPB9CNfdg6j076o=;
	b=ktH7OUkhE2hcYEg6EYY9vaH+lbrJY7ia4RyjycVzsWTI4H6jtAphgpLZEFK6nchz
	xwCdfXpG85anzhlztMHH/7bMngcIjrM5FqJwi7ZF2/zMyPUEQLWEXjIBTHszaJ6q/2g
	I0ZXcI329d8WdwjGvQmQAJr42okDspizAodSjsA8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646168185;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=AMFKI741xTnuJTkObJNp992MiJ/2cPB9CNfdg6j076o=;
	b=i/N4f1BPniN5DAnzlHz2AgBm9dKU2OxmG5+7I7qss/s7zf0Kekggrsj+gNwulYjy
	bYzsnPSryJmuXj3IhBDeZa4KaVGu1BxrNUfgEPFSpmuzaQUUeoOjJEVH9pd+Lu0JxBA
	hKa64Z/eFNHoPNaRch9scyJCt2eItAqN9d1P+BqQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f474517e3-ebb29e5e-5495-4a51-bd36-817f90d5c7e1-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 5d80d94c94b623d0004a24e81491697e5978cee0a75ea267df8ba1c68b57f484
Date: Tue, 1 Mar 2022 20:56:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.01-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646168184
