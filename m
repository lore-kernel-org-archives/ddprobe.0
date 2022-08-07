Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 644131FBE
	for <ddprobe@lists.linux.dev>; Sun,  7 Aug 2022 09:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659865252;
	h=To:Subject:From:Message-Id:Date;
	bh=iRdVjOvTUdIiYunEZdiIcavY3GGFM7Mh2gqQ4Ob9l50=;
	b=eGBjHujlgguzqsLUiCEnDdkeQRixMvcZYlh5ULC+c3uP2WkKa7V/MFabm9tyE+2d
	j1NHYM5Mu0md/O1LDDhGNamEwKcG6nKYvV3Ro+RylsL/rVzpPcnpmd6HvKL7KGYjSBr
	Ww9SPemhmg8fWco4B2r/Pw6gRvZ/tNkDAym9Nfjg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659865252;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=iRdVjOvTUdIiYunEZdiIcavY3GGFM7Mh2gqQ4Ob9l50=;
	b=Og8zLUPGRuaCZCcVD6Tcge4I3ZSnzE+pSzSisEam8k9A/mglPQRk7jwOEkcyKrza
	czFlsY2crXf3O5VodqtI3dy/WIMFYRdZ7CRnn2z2hQ3XVLxumHzxC7+jI/2yPtvPf7x
	8cTKb2Rn21jkOHicPosYCHExha17nWtxAqrGoHjc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018277adc2ce-d15457f9-5a7b-466e-9817-dcd174afe91a-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 7da075969d951aa9489950df7290d155a3e40f9df240660efbd3f923e51482ca
Date: Sun, 7 Aug 2022 09:40:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.07-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659865252
