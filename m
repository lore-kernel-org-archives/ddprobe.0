Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0DBCE812
	for <ddprobe@lists.linux.dev>; Fri,  8 Jul 2022 23:06:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657321612;
	h=To:Subject:From:Message-Id:Date;
	bh=uDM9qaf2OMyHgHccw8e2zbmRKrJuI+u/QEFfjkc/rrw=;
	b=h7jsV4Hjthm1Wmbn9loTSN2h0HKHZTgcao7nxpubttekujBBhd80V3f0ODalXOjl
	EUgcc6BaKCYzTOV9JS6EclnpMQ79a6s62tKYAeoxS01WYmteb7ONZIEblsBmykSI023
	Fz5R06M8Ajj5Cdcwtbo+c8dAKzd5EeHFYB04+RlE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657321612;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=uDM9qaf2OMyHgHccw8e2zbmRKrJuI+u/QEFfjkc/rrw=;
	b=Mn2uPGfQ9CzNcEk9FBRxd1PfuKN+fkQSIgPf9AMDqlkx7kEoiMWjN73THWj12OUf
	597xzCcokMUsmd2fgJaheYePEIszHY385XDnyQT7IcKmgczaM5WSJYFll3AOg/u3kL+
	ywIdqB7nB+Q7PpWz5yCOMY8B86dGXOuhSFTd5/2A=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181e010e429-36e85c8b-c4d2-4398-9506-ce959a5a9453-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 19c72d4bb026c29a8ae9ca53dae2f6e9c49466b4fd8d01f2cff3c44f1148c6ae
Date: Fri, 8 Jul 2022 23:06:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.08-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657321612
