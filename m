Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 278C123B3
	for <ddprobe@lists.linux.dev>; Sun,  5 Jun 2022 22:21:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654467659;
	h=To:Subject:From:Message-Id:Date;
	bh=xMUYCgn31y8BBXEACyVCzF61qRW1FR6r60P8M5v7brQ=;
	b=ZFNTwXE3RdKE5Mm8reUKOCnnZPBh/U3b0ChOhfH8+CxY8YMKtPMmjIoGiYGZtFp6
	G2kTe4GUcd5kWU3X3ohbrcvOtN1fjNPpwtBOknYfNGEuz1Y1u1wC9fFWKdshBMqITWz
	9jlv/P7H/CsPhmGcFTA/lYZC554GRUkHJMKUEVio=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654467659;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=xMUYCgn31y8BBXEACyVCzF61qRW1FR6r60P8M5v7brQ=;
	b=Gg7yF+Bn+QUxM1lxwmHiSx3cmOMR0/E0HT0olk5qVD8bh1SmD+RVp/5tW71cwILy
	170qvzSpRJb3a3W8WZ3nAPC1VIemxOvTtgqlMj2fSbxWEZz3FzJJnrQEK4+oXZVF580
	r8uWkU/MCyruikRjVS/BDexZT3Tfk74c1jvpudCM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018135f50615-5aafdeb3-bde4-456f-ba5f-f6af8d5ad57d-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: de533817e7052114d39bb3051e642c052cbe3a82244347993a878c6951c82afd
Date: Sun, 5 Jun 2022 22:20:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.05-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654467659
