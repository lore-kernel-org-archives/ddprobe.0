Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 701E12F35
	for <ddprobe@lists.linux.dev>; Tue,  8 Mar 2022 23:11:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646781084;
	h=To:Subject:From:Message-Id:Date;
	bh=x5mRHI7RCiGaQY+QGSwc+Vw1r1nNMLAHw2kBgSh1pkk=;
	b=ckRL/AznUKnLoqQQRGrDgfHGHORfC3mSsHFpJ8za7zyYzE7s/UYZT6DtRuA/E9gO
	2WxnkFR1hO1rN0318MxXpJgl1N2LWQrhPu12K674x73dJe6vMjbbn+J1p59ougkqupI
	XG+6ZsosvF2QfZ5ErP9em8ZF7PtAawSPwVFBiMio=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646781084;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=x5mRHI7RCiGaQY+QGSwc+Vw1r1nNMLAHw2kBgSh1pkk=;
	b=BWqtDK5/zzMAVr0bW5jDavl93LgYxNp3u7VL5+pEIDKPGqTi5nM9ae/cgT8MD+d2
	B3x2i9R5f1Uj8FUVNmWjTh3uujcvf3k/TAsWc5Obumueuh6wAfxWXxFxMDJg1Sa2e1f
	tIkPN8GFvrBLdUnTbYwiRDZ5oLuMgCuBiQbOmlKg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f6bcd3423-9d575775-0aff-4742-9c7c-1d1f1f61f172-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 7c5bc0aaa81328a65bead68fa4c2000b5bb82bf5758016ba4ec83322143edd1e
Date: Tue, 8 Mar 2022 23:11:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.08-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646781084
