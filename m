Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A4001FA4
	for <ddprobe@lists.linux.dev>; Sat, 16 Jul 2022 22:16:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658009812;
	h=To:Subject:From:Message-Id:Date;
	bh=PpY5yJNPiT0ZAc7DtLbJKL36vjr6ujqRD0bBxzQbAus=;
	b=CD1XtpE96SAaEeDrPJOMJYq+AvHGSroUZDdt5LQflMLx/pKd6jC+8hdQD28SZLSM
	uUS7kccPgKO3FFTzMSwbi/QgRpvAw6v2t0olq2EHaEcmQAsNnLonHgCRYJ4+TaFDO0R
	RuMU2R8qZT41XyRahOTE339UiM9OtGO5x5Gen/Dg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658009812;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=PpY5yJNPiT0ZAc7DtLbJKL36vjr6ujqRD0bBxzQbAus=;
	b=BiGEmWW9JbNfFAro8h5I5pAnbJamUXuvdSkGHptQ3wcKdXopRd2W62YoqLvqnrts
	u76/2nwunh3bidOVKxU+V8qgGFVMYdG5CrM8c5Cat6LVDP2Nv00EZbFVM0a2f1hKewS
	iaKvIBNslGSqCEdkk6QCi3zvKWpp/jkLjFZTUov4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101820915fd9a-81bc9c9c-7b97-4f2b-a6b5-9c2df4f9bfed-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 6fdfafe2ee70d65a61a48cfca38c07e6b6beb148e7b143b24537b341f883fb2a
Date: Sat, 16 Jul 2022 22:16:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.16-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658009812
