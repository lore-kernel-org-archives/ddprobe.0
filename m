Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2AFA63D9F
	for <ddprobe@lists.linux.dev>; Tue, 10 May 2022 23:48:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1652226479;
	h=To:Subject:From:Message-Id:Date;
	bh=nVLULJZc/vWDVm5PENgWHjSs9TVW4uNmLJF6GXHe/pU=;
	b=A0/zSbRgVgXq6dSAFd0gII/lbH2kcEX9JIzUMo6Jy0ALgPSSW5QUGD9zveM3xOhO
	6TGBusBSx4vL0/m35RDXsLQJXfSQKkuAT+bdGa683Lg+DGt+/5xkPNZQXCek8RIOgNS
	6HIvqe7xK1p5q8OljshLbLZD7QxDxxzn8ecGXGos=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652226479;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=nVLULJZc/vWDVm5PENgWHjSs9TVW4uNmLJF6GXHe/pU=;
	b=DzciKpUNLYviSS17vvn04QqEEcMTsnH6NRCU7//hv2fsVNWFvsFPjAlaxtqHHR1R
	XiRk1YaVIbb0FR1zvBwUTBG/rm8DNyYy4UFff1prg69pS0mbw8ErGMBDdskzwnhnncK
	tporkR5uQX5xDG7KfDW4Fjdv+KlkJlemHfVxzEnw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180b05f54b8-afac652d-41b5-404d-a84f-82aedc1effe5-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a063ed180f72c74b4f5ddb7e660c6f4e27f3026c1110d8feaa802b8494e386a4
Date: Tue, 10 May 2022 23:47:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.10-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652226479
