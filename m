Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E706F3D82
	for <ddprobe@lists.linux.dev>; Tue, 12 Apr 2022 20:35:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1649795758;
	h=To:Subject:From:Message-Id:Date;
	bh=+Nomnfdfp86JmZskhJverHVcIt/utoYedncQJvcRIGs=;
	b=FDahRbzpZdoapfE5DIOqyd7gzN5UGglyioj/W2hMjQApPiUBXsBHWfm+ESSYtXN+
	Ir7HMlvFPN+wEopEbbU4rnpRSG7mzJeP97Gwpo5Lh+Zv4+XlxUP5XYBpmkwpsf2/VbN
	A45rjmHGF6UWR9QHO4iUXlwh2QwXXMVlCq+Cqypg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1649795758;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=+Nomnfdfp86JmZskhJverHVcIt/utoYedncQJvcRIGs=;
	b=BYFXwxaOSaJuGD/vlCko8ca7JWB5Ml5U01rJOU2qLTPoZB7YjrQ+5j+MM02S2mZ/
	ILOIrzduCOlb7qu01Bo5i45JLskwz0Zd/mJ4L9Kr4vdOl3Iy3w2JAvRmJowrCuyfFU1
	2tE8xAgrZc8LMq2r84F7JQRiGcm2OSczLvQ48fJ4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101801f7d78fe-d5cac635-b3a1-4f73-9cb8-e77cbb223cf5-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 3e07ef4dab1e85a6e948ef3b791d4aa51d58e2090d956e75913a93b52d265194
Date: Tue, 12 Apr 2022 20:35:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.12-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1649795758
