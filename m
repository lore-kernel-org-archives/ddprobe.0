Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 19B8E2F28
	for <ddprobe@lists.linux.dev>; Thu, 12 May 2022 23:04:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1652396639;
	h=To:Subject:From:Message-Id:Date;
	bh=7zDQKQFEjcPSzFL5mIbdAfJq9hA9XXVT1wiU0IsAugA=;
	b=IsmY5HEsqjLiDaIwMmBdXpmMhcQRDmFP0adqtNwPeuWgeNvrv+J4dxmOo7f0NrZa
	Dil50Tm0aeNtbJy7iZG2nuuPHEucuJ+N10tbQlZnNtGIuEuFnEcQOTDZQFhgdfmLus/
	w8HVT5ViQrafG+Gi/f60UaDjN1atcgMPqM6pTCIM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652396639;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=7zDQKQFEjcPSzFL5mIbdAfJq9hA9XXVT1wiU0IsAugA=;
	b=Vei49+oaOb/A3uUmztDLrKCS+lWwJQWpd+Ae/li1iqxYcMnrWAElcUEM8aPc6PXz
	PIj6b7NEWXpt6OesGjA1zzSCEPYZeS5ieAwOI6HyglrpHgA4z+w36SPq8Coe381nDiS
	fQnOx++lEUIJFNIS/ysek5rrivS7+cWvl5Xep02E=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180ba83c4ed-d4657120-dd89-4771-970e-8f8a714563d7-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 53529d75f3b957594ea6eff4d0e952d2b9a917c7431c35ef312e97fdc1dc5e8f
Date: Thu, 12 May 2022 23:03:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.12-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652396639
