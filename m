Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 99AC27A
	for <ddprobe@lists.linux.dev>; Sat, 12 Mar 2022 22:31:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647124284;
	h=To:Subject:From:Message-Id:Date;
	bh=4IpUAFh8uG+pPyuVShvOgBBYibYaD0GOShOd+sDHf/E=;
	b=fJU9GucCuxdlXweektILZmWHx8rcj+lNqg+3mi64Xko4j4ZfWn26p+wj4WwkQuOg
	Md8B6jG9rEGLnjrGT/rCfRkCdieMD3V3MaP3UA81N1lJKlm8diE6yt/7cElBDaW+HRK
	vWOgSPRswC+eQWT55FKXU2mmzYxMteZuNGEPKoaU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647124284;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=4IpUAFh8uG+pPyuVShvOgBBYibYaD0GOShOd+sDHf/E=;
	b=ThOTnHOu+/WHl53Fv2EZ38BpxxUEEjpjge3VxXaf8vxvJdegpil1N/QyT8HjHGUy
	NMMGLH/CiNQyZaIEBHiv7MO26iNenzxALahhn54nFisFtLl0vuTV5GZIWDppOARvOdj
	MEA7HDSOPvABEjekD6s2NXOGwsPl1Yx/ASpRSU0Q=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f80420544-4d11d585-d324-4ca3-ac47-e3fc1f13e07a-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 775c46e9fc6df1d44c13e4565423f4fa0e8cc184c3c2210696e2c6abf3840362
Date: Sat, 12 Mar 2022 22:31:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.12-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647124284
