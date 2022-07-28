Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5EAFF7A
	for <ddprobe@lists.linux.dev>; Thu, 28 Jul 2022 20:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659039652;
	h=To:Subject:From:Message-Id:Date;
	bh=F7WGP8UKdZbo8++Kexg6T0Ux/zeMATOPiHGC3Jv4CXs=;
	b=ZXik8HxYqqiToaECoVut66LmrcQtzwB9Gy0jeF3qLb8dr05Axkf1ZlEFBbFfBXuI
	TC52jLjqWne07qfVDtcYgloI4BJ7SMn0PI0DN7/kprdO42yVrpv/W1ziYn8tE/DlrAV
	IBX1TfhghAoz9ipMq7I4AkYFe5XlC2gc5OGJAx18=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659039652;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=F7WGP8UKdZbo8++Kexg6T0Ux/zeMATOPiHGC3Jv4CXs=;
	b=KJdh9UaRQrhm9oHG1f9bTvn0ElzqaTmqu9uzL1ozoq2/4n35MKCePcgGQomVuD7E
	nNB44lIZIr9BFDQOwos/atSBF22SxXXn7dqwjojxzEtQ73ZqR3ZOBEHNUtQmAQcqy/l
	szZaAW9YedyEUJeEO8NkglvlC6lHvVHv2Dhi8eCM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018246781af3-5f2ec603-1408-40ed-8488-6b79b4147b54-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: d52a9cac3c9318887f4170c83797ec5cf7d97db04549afd002a58319aee76153
Date: Thu, 28 Jul 2022 20:20:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.28-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659039652
