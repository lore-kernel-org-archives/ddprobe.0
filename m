Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A7A43C6A
	for <ddprobe@lists.linux.dev>; Tue, 22 Mar 2022 15:46:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647963985;
	h=To:Subject:From:Message-Id:Date;
	bh=DJn1+Ax+pfnlPyRlp0Ta04+Hh0ROwlCliqus+DPV4FI=;
	b=jeWmtaMIEDfqAhh5dp6G2L+r74axC6j55eaR91rMlHs9k1rRceX8Dc933lTtJHa+
	KuPsMWgLnGL6c75iSujkfqlD6lLJ+184od7y9ogK9npFR70zUMa5tdiE3Gd3Zz4hJcZ
	dL+NjJVhbn0tELU7jPPNIWaYBpYU2JyJQKL+KvuU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647963985;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=DJn1+Ax+pfnlPyRlp0Ta04+Hh0ROwlCliqus+DPV4FI=;
	b=fcs/JYCTODIm+iLxeLuxBuaCLme83OPwgpsFhHtHLoBdUEfmCDxfmVfdm8PCyGJE
	co4ED6cBC44z4xTodiVZrnMjIpHe22iJ+NtOuccmO2oLsUBvte48loB6DwLxlH0FgTg
	BJhDR9bHYjwxpUWPM/PMjD6poC+scqvQi1OCbHxw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fb24ed35a-08d6406e-b695-4667-8ad6-15385f6fda28-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: fb6d66434b0671c2f0d7d31b86644799dad759b6db0ee20ad7f1775bad0c63ea
Date: Tue, 22 Mar 2022 15:46:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.22-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647963984
