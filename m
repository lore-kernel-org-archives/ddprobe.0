Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 197AD28EB
	for <ddprobe@lists.linux.dev>; Fri, 24 Jun 2022 12:56:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656075412;
	h=To:Subject:From:Message-Id:Date;
	bh=t25fK06FYFiFILPBcLad6tJ8J/uCuXRVZkhgnhFlfjU=;
	b=Ej5luXFjWB19BBuWJJg30BihqGWPXpqXvJLnd0S4jy4bX5Cc9k1a/K+NwppkPVS5
	Tu8bXcvBfEj2tS2KoeDj4Xyv70nYiu73SMkCbWmLw9H+8bZnJzliJptfSJlNyhFfZ8U
	OGCiycSi+eCbEtYll0SWIneEt3uoDFv8LqGp2bro=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656075412;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=t25fK06FYFiFILPBcLad6tJ8J/uCuXRVZkhgnhFlfjU=;
	b=IF5TD1MrzEBAcEw6LafYhp2edvvtXOLYq9r+5espH3vkaZX6EtVbBKQC73iInsSB
	kY5tu11CHSzP/jFh4QsFvBS44wiFcaugw7cw2Lh9BrV63EQnHJqO1rW2lrs6Q79j/NY
	L/0lRvAavD1PKwce1ClHTP36qDI99G4oabuz50I8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018195c96331-107b955d-2ba2-4360-8568-d755c2aa136c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 885323a2d60df2b0168da723c7f329b50763a1b69f4d13740ab4c06f54d5bdcc
Date: Fri, 24 Jun 2022 12:56:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.24-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656075412
