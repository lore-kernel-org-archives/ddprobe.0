Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 882471C2D
	for <ddprobe@lists.linux.dev>; Sat,  6 Aug 2022 17:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659807652;
	h=To:Subject:From:Message-Id:Date;
	bh=twJBPQyFzkQ//+nAjOKR09mtc2Ecv8XBatyoSdMc6NI=;
	b=cBBMnuBBTuRBN2AOeslK8H3gXWXfsfoTgygLo0d6Xpeq41vrVf4ZudLTCU5WO3zQ
	/0ZOo319L/gMVZxCQUuclox7xTGTL5pG59mWzfo0z2W3oeHt/9k1FsJHij2c+620ZSz
	qOy+fGqn/TJoOzhOPaza4DB3eJ7wN+pzY98dGMTI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659807652;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=twJBPQyFzkQ//+nAjOKR09mtc2Ecv8XBatyoSdMc6NI=;
	b=KFbuIwuHX3uCOsxPytkdX8szsc2DMHQN/AMofLOHtyZr4VNwcszgkXn8pdg51wqu
	MfYBzHLveAhLF0pZ4mMTOlFu3Y8Cda2JVHjJupkFqaQRjg0/bjXxge1UJuR8wwAlhQo
	e0vwfzoUwQo2OXoJvtI1Uxtbm0Xh2YUg6nPZ5j34=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182743edb07-20836937-89ad-4b43-abba-5863f9039da0-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: c940ea57f17e916bc7b12797e7608b28982523cae5aa3bd2d8da148dce47d7e1
Date: Sat, 6 Aug 2022 17:40:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.06-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659807652
