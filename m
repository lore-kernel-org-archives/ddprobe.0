Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 377F97F
	for <ddprobe@lists.linux.dev>; Tue,  7 Jun 2022 00:20:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654561199;
	h=To:Subject:From:Message-Id:Date;
	bh=bf5tSMFK2jpI6cBvAlHGi9yXZyZ4p0OjGaW5PoJp4+s=;
	b=R/9gUFDeLPOL6BNd8OgvhKqZQf/jjQdYnjN56nVff3wfoCYApbS9fy1VVKIPvnRf
	yIuckSWMEMw0NELAOPTYIFJxSEkWUHVyYtgpRZbyvNzB24o+OMcyztNDSxDEaqXfiEc
	fxmsjUUQI/35tcHXU9kTp74Gra4bHnUBDTK250ME=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654561199;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=bf5tSMFK2jpI6cBvAlHGi9yXZyZ4p0OjGaW5PoJp4+s=;
	b=KlxpnactBDy2e03dLpHY//oaqOjRDtUOJTHVAB16bFcaEq1jDrGNSfvPMRZ8PfUN
	W+2NxFECPBekx+eDlTcwO+v8qiH9R2DlBOWe8kF6xTe2VE6uaVDE9MeqhOjB5SLdHpi
	WeLclIoUgVlOBt9IDIXXRhhpbcrqRRYa3jQCZtME=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101813b8854b9-6fc8ac0a-eeed-4ef9-b110-053e076e0c54-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 443a0130347b3ef55f7ca966de7232e2182faa239ba477e110771854c97dc1a0
Date: Tue, 7 Jun 2022 00:19:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.07-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654561199
