Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ED9BA62A
	for <ddprobe@lists.linux.dev>; Fri,  6 May 2022 00:42:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651797778;
	h=To:Subject:From:Message-Id:Date;
	bh=hTeMD/aaP0kYtPrjNa0IfkMj7K6HpUiqv2JdLd1hKaA=;
	b=hCAmt4wVnGHIwEgd4ad0Xc51Y9KaPLcE2bimDY1hTNBc4twKFx53wk7fN5zzpvIw
	yt7mBWAs99h/AOkc37d6v6xfrqb8u0r7ReYghiTUTqhGqwH5aez6s2brkdh7yjOR067
	Kcuk2DmjfSFFaufaDOGSCtaU7XILOXkaVACOPcGY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651797778;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=hTeMD/aaP0kYtPrjNa0IfkMj7K6HpUiqv2JdLd1hKaA=;
	b=IVmcJHkGiRHe/C0CFYGrXZZDHbOBTvvAldJCF6A0jwxI7HI1en3MW+iq5idIRw+e
	IipS83rmoarUWKZGzn4FNqqlcA0ZjoAYw3yWQKXHG1lPKUVxJg4dfzIEu4kLeoA75j6
	2SwP+EaCvd1ue3zVQnzuLSvPaVQHGF92AGNYyVI8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018096d1df6b-d74d1f12-08a9-4160-bfbf-39d99d94c20c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 3599a99c7930796a1a5f1e2300de25ec4c4d6d8afc0041855684aed8a63a06b3
Date: Fri, 6 May 2022 00:42:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.06-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651797778
