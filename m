Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0093D137F
	for <ddprobe@lists.linux.dev>; Fri,  1 Apr 2022 18:27:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648837678;
	h=To:Subject:From:Message-Id:Date;
	bh=Vl8aMuSnc1N7HaalL/GQVIlBWAblwKI7t19zzYfQV60=;
	b=fV4bp8AiT2R2HFa1yEocQdDvpPDdUx8AoVvMmB/U74//AdBk3nD2/SpLozDac9zx
	30lyYZZs7EMBhENEkH9UM3Ce1qCoTZB1wsYXxSDeGRKYvqArJbGLK8805dTNOLDu6pV
	6t0ES+pU5UjvjQRoKadOJ69P1+BlD6+Jffh0/zao=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648837678;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Vl8aMuSnc1N7HaalL/GQVIlBWAblwKI7t19zzYfQV60=;
	b=O1r7K3eyk4pqQ30QLH5/9CiBVExyOF0nVvQFp7Na3TANndCCX79TTy3eZGPEkQ2i
	KKjiCewU1k34PHdI3SY/KLUAPYPQB4/SvLxb5of73kRjNvD5YfwNemAidtR3EvF6c5d
	HHPhNG5e0xOnI1ehtqKnE+rm0wa8sXlBTLAhYtD4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fe66254c8-4728a542-6bc5-4ab3-91c9-5aa6f6d633f6-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 867f61d3d4be93c67162afa3ce8767a9088d8e3bd14a52f24c04ca657a755e2f
Date: Fri, 1 Apr 2022 18:27:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.01-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648837678
