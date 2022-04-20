Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 338431866
	for <ddprobe@lists.linux.dev>; Wed, 20 Apr 2022 20:17:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650485878;
	h=To:Subject:From:Message-Id:Date;
	bh=lE/kDlzT4vHO/9uzYfTNn/mSmUwNowstqkkruTDgHms=;
	b=XWBCjbzCklm/7Vc2A2Hnji9WxcYVVmYAn9HFhTilHmaLZq4i9ThYiWGpSWsdI4Yf
	VGHHigKFAD9m9EYQ9sKmDjNEF8jsBSrAXFRM1iuadgccecmStBn5XTWbgIsW0b7iyeT
	0Hq+BzxCXZbjaT2dmhfsoqQDYpb3iRV6fx8AaJnI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650485878;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=lE/kDlzT4vHO/9uzYfTNn/mSmUwNowstqkkruTDgHms=;
	b=esJyM19a743r6uZ1exi8a5yYa/b6thTSC9J/sI4s59L1+hoG7Yb8eC2xmGaslU1i
	eh8uNv2TySHTKpSNm53W3R7ADoyTPsOWDS9/7yD5sCljI6TLgq8kFVL92LOudYcjVTU
	Kxg5HB054u3HSR7xcpUy+vMlIxPdpTDExtkfRfY8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180489fdde5-bb39743c-5e9c-41fc-9d86-df70611e1046-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 6f905b6230d6049bdfc407a5af5736a1af5f8b1f3ea1b0538d1d3077b2f9a7e4
Date: Wed, 20 Apr 2022 20:17:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.20-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650485878
