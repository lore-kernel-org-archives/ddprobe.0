Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 801664A1A
	for <ddprobe@lists.linux.dev>; Mon,  4 Jul 2022 21:26:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656970012;
	h=To:Subject:From:Message-Id:Date;
	bh=Qxbrd8iehn7oyQb/UWz8AvunrOuY0KtRVy4axHD+jNk=;
	b=HMEC1mlgi7ayUk2+munNbm9J+IP7Rgoe2NO1LW08nFaYT+Opgt7TcOQkA8CFH+E/
	06CwDLTPtSTBIhwsOY3ICAv115Xg9oLkwajhbzkww9b59wthXM08UC1OAyBGIEAR/MY
	/rkl3n5HT15SEXm5TQJPSzKRdDylDn8cERxkHZNg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656970012;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Qxbrd8iehn7oyQb/UWz8AvunrOuY0KtRVy4axHD+jNk=;
	b=J+V2+W1CblkW76A6DKF5aeBET6T52E8Clp9lOSEekHsXm5H6+hRFATD1ShMFKdso
	bgHq+29/SCwl3lmJNMyzzaGkni7ydK3mE/2gvCfJj3+mV7vrtPtKM6Fp4P6O1XJj11T
	6Pa39qlCPCRLNJyY1WH/oLw3QLPVE4QJdh3+bzks=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181cb1be688-78f95e6b-7a1d-4d42-8f62-fae585507b1c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 022601cf6fb563f0e2fba3fce834158f187f7fdd02d857c7450ae5fd7d74153c
Date: Mon, 4 Jul 2022 21:26:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.04-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656970012
