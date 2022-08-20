Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F8096101
	for <ddprobe@lists.linux.dev>; Sat, 20 Aug 2022 10:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660992652;
	h=To:Subject:From:Message-Id:Date;
	bh=Ikr7d1DupIiuwli862jHAltseLhG7tDKyMo/D10Cm4w=;
	b=TV9QKVLY30LX3cUpSKNSyjnombR3wxwt3SIQLP3dy5s/55pORzYK4dYSU/MHcx+3
	/PvKvhvmBYkkn8p9WMaSQePuAlkoiJm5OS6Ab9V0YkrY8LE1MACal7heUZiyjDrj9+C
	2X4mX+pNAwzAm7xBzaQ/Qe5xACheCOgznKnA4Ga4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660992652;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Ikr7d1DupIiuwli862jHAltseLhG7tDKyMo/D10Cm4w=;
	b=Gl3MZhCoSPCSyBg+V+2pBYVsy2cHOKFgCP9bZ+Rz/RH+2+exHHjb5Z1Oqpljcl7o
	CmTWmWLfSSPxb6TiSVSnRjQCxpDiB+ogjBAjMgRl2a0uVDSVf1kB3T3VF3cE/QUkDnc
	QMCulMXk4RWj7p1AWcewxlJJOkLc9ZbwqotMozkw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182bae084ff-fca79ac0-c72d-451c-819b-e02f518a9a53-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 447c7905e16bc2e4109e0371b8362c97fa1f9a49d39a6bf5401913fddc3abbdd
Date: Sat, 20 Aug 2022 10:50:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.20-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660992652
