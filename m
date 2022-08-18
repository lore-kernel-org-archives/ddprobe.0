Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DEC9115AE
	for <ddprobe@lists.linux.dev>; Thu, 18 Aug 2022 01:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660784453;
	h=To:Subject:From:Message-Id:Date;
	bh=Ot3q06n7a5uhAmpagqGNr6CNHn7B154iHz82PjblaDU=;
	b=h+lz7TUqZ1z3VAFo6520Sgouz5NBLejIt0kaMnf6EflPzMyqoqP1xCUm1YJgFTit
	fBklhi6wth9KTWR2IrECc/Wy2sQ2+qQVGrbpaScKVayL/WTqBC0GbDM1cdNhhiBuue/
	Y8VunpDSFujRlqbZ4rNS1eMh/40MJyVRFHSisy/M=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660784453;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Ot3q06n7a5uhAmpagqGNr6CNHn7B154iHz82PjblaDU=;
	b=CWVuPlH4+5Mjam5ALgntuGHt/jmSLJS0GdJ9C8nDpo7mtZGkecPrnJi6Hm4W93uf
	QsngQW40pkskPFL7j1ahmdNT4YSePcFInxapYBNi7GrQW2D0rCwD5KfPOT3QP2McKQn
	RshHFTjH9brh+jzj3rswqHwP3n6J3jSPonSvqjJU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182ae77a3ea-d4092d0f-0873-4130-b3c1-27a0351814a3-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: be8a7df39ffa1853a9734ed38de9b8844b36c3098673f7ebcc5daff277131657
Date: Thu, 18 Aug 2022 01:00:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.18-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660784452
