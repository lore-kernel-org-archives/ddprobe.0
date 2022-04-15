Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D519033C0
	for <ddprobe@lists.linux.dev>; Fri, 15 Apr 2022 15:55:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650038158;
	h=To:Subject:From:Message-Id:Date;
	bh=cc9RWS13sbw3hEmh9SCZ70VcQo+1IvpYCm1fzBI6TGQ=;
	b=kaj9fEpKy/cbPI2Bj5/7Ji39ZCAk6noVIeXRgwbJEFpPSOBGfetHomk1ZdqjZn9o
	JvtWtAlGqdHJPEdutCxtBDjalwCGcTGIjGp0H0fGdtjBWb6mTBFcT/t30ULrJbe5bus
	FqVC7zoDl1SU7AJJJ1bzORaeuSApY/MuCjGI7Pow=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650038158;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=cc9RWS13sbw3hEmh9SCZ70VcQo+1IvpYCm1fzBI6TGQ=;
	b=ZJNPVYO5n/hTmDgESXeOPvVHBctH6/dxAOm7x7xegfuNMZhvk7z+d6o7sh7dQ9cH
	8dfAtXHRpwDWT6MthCXomHi6NwvezujPQ3r7kVAAurTc4hDYZwaRxjpFkV1JeGlVyBd
	C/aBdGRtkNtDa2teGQAH/GbOYQuinem39mfFQ7HE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101802df033c3-b8ee9b77-0a3a-40f3-bf80-e542c98e475b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a009d9564ccecc8b3980a1c8f06f3783977ec7bc91a1f42809a74f3e5f63d501
Date: Fri, 15 Apr 2022 15:55:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.15-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650038158
