Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C82973216
	for <ddprobe@lists.linux.dev>; Tue,  5 Apr 2022 21:35:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1649194558;
	h=To:Subject:From:Message-Id:Date;
	bh=XqfMYwCQpoJMkZ2otgqFz2GNutn2SIXyokNYZ21gDow=;
	b=SU9frBAnD43mxOv8wpNs3pI5lL/lrnxfM264xNTS2F9h3bNUK10/hJTVZ+fFlRpH
	pXtevqGaXXPvzhcBKEA9b1Jy60vGAG8CJ/HR/cG+mDRThCWgg2LVkkW20Z9LC6RwjkZ
	IMUotK4G3l+7lksnRSbYJZg7YH1SbdHaIcklByaA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1649194558;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=XqfMYwCQpoJMkZ2otgqFz2GNutn2SIXyokNYZ21gDow=;
	b=QLquXR2K5UsnEvVf958kuJZjhjj0Vi4Q2fYELFyQX1LABMr+29gvvjmpoZu0r4Lv
	/SaBYPCHY0Zbd1CHMVwGK4w/GBZAm092fRys67BnG8eIN1XEysF3ZfQl0TMrgA3j9fi
	LmJ2gUtxjEPQJ6obJUxZ+PmC757JNfzsu971RoUs=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017ffba7e2f5-e45c0097-3d3e-45da-8de3-992df0f835a4-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 3af5ebddeb3fb99f6d2e7ebe9b3cd811ad24f4fc64a4c897f82710573db10a61
Date: Tue, 5 Apr 2022 21:35:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.05-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1649194558
