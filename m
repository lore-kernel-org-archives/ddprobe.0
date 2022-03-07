Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8D3637A
	for <ddprobe@lists.linux.dev>; Mon,  7 Mar 2022 13:46:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646660785;
	h=To:Subject:From:Message-Id:Date;
	bh=leSnQOr8/kUNMt4mUhX2+eOAkO1Xu6zizhVyU7YKzKE=;
	b=hMG1/448Np9S/BTZ17IV9OiapOk+xJyJvREr8JFev7Q29QK3VLRvCKttS0ohGDa0
	iRdctKnYsa3B6Uqr020mo+aK+JzaC6vmlytBOUB1S1OJqF/lYXPMZ5XLDXAah4L0FRr
	gcQZ7Hapktmw0eJimZsJlDdTOzUl/aZck0f2P/UU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646660785;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=leSnQOr8/kUNMt4mUhX2+eOAkO1Xu6zizhVyU7YKzKE=;
	b=faRjBCNvgYmqOCub19W+Mzb7D7do94Y3bIWgai3U+i315Ud+JliqYwGpg9HnF048
	qUWOYUhul+Xafp/mEaKRifYOvOZwcp81IiGopbJ7Jb6TIReuMFUVHyGlRhJZXy2k3jL
	tTHENR0heyUuDAEwa2bvTg4735MLQfbbaDb2e9d0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f64a1928e-914b5ad9-4ab7-4c00-8839-717b6315235a-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: f02ab2a8af77724191512fb4dd7e2892624b1eef1ce0f8462edbe20402bf76bd
Date: Mon, 7 Mar 2022 13:46:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.07-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646660784
