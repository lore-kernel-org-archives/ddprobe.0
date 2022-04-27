Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 14D447F5
	for <ddprobe@lists.linux.dev>; Wed, 27 Apr 2022 10:47:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651056478;
	h=To:Subject:From:Message-Id:Date;
	bh=F4odcpgDmEcfkDRtXzfJxDEH1aoAUEWrjauw6tfsmRU=;
	b=GRExv7nuZjBrAN/Do0I19YKhgeOSUQCEHOczHF7acKIpv4rSvnxp+9AsVg8Lg+V6
	ZoRGjZKQpj86qYvuYFC4TstQlCuDQX6C7XK8vWsIpffzpLplW5RLBt0AFuwpgtNmpzU
	yz6CnmrM1ZzhHmfUeqBiO0x5Ozn2o88Dw1P39fj0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651056478;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=F4odcpgDmEcfkDRtXzfJxDEH1aoAUEWrjauw6tfsmRU=;
	b=VGCCADzlagG6niw63MMunDNIKI6gEaxaPh2y1sqeBJTHS1Eslx3KBtlMV8Q9qWQm
	IYZ4qA9nh4IomjDhhS7DYa6UEgybR+ovtd4GOppXEyR+kp73oGhYGbXlcTxteY57VjP
	X/9z+igEqmWpqCWRrAC7Qdv1AWyJdUAvWRF6HaYQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101806aa28875-90a9ad6e-0347-496a-8c27-07ce23e29e02-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 26f5de20f830560a9e7d3cca62993445af14d11f0b9c97ba697cd0bd2ecda484
Date: Wed, 27 Apr 2022 10:47:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.27-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651056478
