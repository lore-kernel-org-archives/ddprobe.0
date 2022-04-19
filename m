Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F0F8A2A
	for <ddprobe@lists.linux.dev>; Tue, 19 Apr 2022 02:07:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650334078;
	h=To:Subject:From:Message-Id:Date;
	bh=bbs3nKIHslHFnQtegxszuFm+5defadpxsmoXi+oRu5M=;
	b=BOq7WllNcsFrbKLjwiKDf3PvXXBtGSHaUb0I6KOh3mEEQ4gPkclnBYjqT+9LNhWZ
	kG0qNcFHnfeJVvMsZ5Mt9u06cg3cFB+/oichazFz4rySJEA2zMViHeVlR7JoNXva1G9
	Z6StJk5Lp1XO9nqR7B9qYWTeyybx4SAYtA4CivcU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650334078;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=bbs3nKIHslHFnQtegxszuFm+5defadpxsmoXi+oRu5M=;
	b=g0VFgbgm4FJr2ggVFsdLop7zyGg3E0EFMKxNdoyvhwu9tlNbaXLGiFHFfspn07PW
	Gvn06JqW3Kkm17dnPWXjepYgKoE6mGGgntWLTy3I75uVKI5vyIktzYzXGP+lo3Cgxo9
	iHffA/8wpF+akmxDYPTgz/CaXYuCb80dxqDekf1I=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101803f93952f-2f6f5580-7c61-4ec4-9210-7d3fadd9593e-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 4255dda175f2af7d9fbe46f28ab3daa77a2707226b0e3bfe15951b6b25310058
Date: Tue, 19 Apr 2022 02:07:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.19-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650334078
