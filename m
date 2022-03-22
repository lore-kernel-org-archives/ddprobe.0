Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DB439A31
	for <ddprobe@lists.linux.dev>; Tue, 22 Mar 2022 09:56:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647942985;
	h=To:Subject:From:Message-Id:Date;
	bh=Z8Rk/t6VJPGMwAGrMxX/9YH3zjpOFf+Ja7cpVJEpq3A=;
	b=YBYavSqmiWLOnZofCFPJaWpJHJCEMBu0/Cq3Dap6dzc7bOtAkMpgFZ8zwK6+Go6x
	MjJ95tDAkePd0u+LZAYrFljT8rJHhhd+PFFDlhS+OyOXMfMYnCEWhBPXe6kvCX6lUuF
	1plljSYxVFq8yst3S6CoLaeNthmFYfR791O/lKqk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647942985;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Z8Rk/t6VJPGMwAGrMxX/9YH3zjpOFf+Ja7cpVJEpq3A=;
	b=KP/4za7D0TFRWi2DBptF7etLpjXEbnXdF7HN4xRmtd2m7ZauVqavHrR176165vJ0
	keCdkhcIoVj6BDw42N8d5xsaz13j+yZsVtrqIIh/ooEzVr6uF6VrXWaZVrJZ2HNwctf
	peks+NgJDskHPwMOnPwzYDshdot9PhpTjgAKU8pw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fb10e642b-5c807c4a-abf1-4afa-99a9-60e24cb4e5e8-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: dda384fc0c9cc3fe2df3d2d542ae35d6cdb19e7cae80f4ed09cc9aa95f5b4141
Date: Tue, 22 Mar 2022 09:56:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.22-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647942984
