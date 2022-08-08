Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 692527C
	for <ddprobe@lists.linux.dev>; Mon,  8 Aug 2022 04:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659933052;
	h=To:Subject:From:Message-Id:Date;
	bh=eXhpGEIwCbwdACE9ACgIkpxij5MuGkyvpmys1BLiZuk=;
	b=O1AcTQeVe2hb5oqg6bgFdtVkVKUWf7uzJ3iZTUUmAfwuYaSYyK/BWcaA+uXk6oMe
	DrQoyHgtYfBQWgjDCEgLzt1SN5buguTKXryBm/clLqi/+/Cv2EpNkpjUgPCsC3VvcM+
	X+r4ey58PDojOFTWX3GtI+1yrUpLand+g1EVcPTg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659933052;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=eXhpGEIwCbwdACE9ACgIkpxij5MuGkyvpmys1BLiZuk=;
	b=IPufvSWVJo0chaGNCvXPiS9bDLXn0z4NGG1yxgtXYFQGDzKlSu/gff1z23Y4YJmK
	OKxsEigqoNynHMsc0/jqlhd0vC7A9Wwprt983gsj6zPOSpWh7hhG/48Z4Py83bGP1Rd
	XPM9J2Av6dBr1rUZN1ROkTBjBrB07HJMhUvKMllM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101827bb84f00-a27db883-1ccb-4f5b-a536-622377891e87-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: f9428cd057c5de528fd153c4481b1eeb1a37d0ddf3230577434ac38db2870c87
Date: Mon, 8 Aug 2022 04:30:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.08-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659933052
