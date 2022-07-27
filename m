Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5A955EA3
	for <ddprobe@lists.linux.dev>; Wed, 27 Jul 2022 09:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658915452;
	h=To:Subject:From:Message-Id:Date;
	bh=lFqa5ox++2gBa+unUgWGJosSOOOMDe7MTkR9124vmQc=;
	b=Z+bqKXLA9vl7k7dsmARmCNUVnAnX5Jf0SipIyG5EvLELO5Qa7S2NNHW9Rb3cguvU
	2cD7k0jMnY0gTlAq/oq5D3ePIjz1dpO+r3ILBOdBRQ/B/2MjOSoLo2JRt+0GnOlXJnk
	U20ab9ZEUVUrIqTGyCW+J9H3DgCwLC8cL1sW0MU0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658915452;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=lFqa5ox++2gBa+unUgWGJosSOOOMDe7MTkR9124vmQc=;
	b=g8PKCzb2N71gvx3Q1/v2n0y4YOIWlMRfLSmNhGr99+PiuHJB/NguPPJX5V8e5Hl/
	KOV/Jcnkm30H0PQenRaSUKmY7UcHHZTaOy2zT7UtKrYhs+DKy/Q6FBKXy88laxwVm4D
	YZtMtf85cT6ZZ6Q5ziHkxmT0G3EJwlKOXFQ9ACZk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101823f10f692-aaab4716-ee26-440e-9df6-e38422eb212f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 41ad248a64cf159378c5ad40bc4b960b4d3808c92779e9535635417e6fe75645
Date: Wed, 27 Jul 2022 09:50:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.27-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658915452
