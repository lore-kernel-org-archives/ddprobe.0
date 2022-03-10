Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 64FAE5A38
	for <ddprobe@lists.linux.dev>; Thu, 10 Mar 2022 21:16:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646946984;
	h=To:Subject:From:Message-Id:Date;
	bh=/S9zsfwwfyoO/n/8oKtjkd+hx146YrSPE1NakSzihXI=;
	b=jZTYI108G49z2xhm+vWCCszugDlLyQQcMS7+/oVMkAsQwhgZGqB5Y8qLwH8irC9S
	waZWw8NPp8juM5skpZE7qGSCxApUULK5EmghkbXFa/lzQylzgmVl2souOKtlw+Khpbs
	K7PCg8HYGrpbOAmaNRc7QkKfaNKHAvdgqGAVGf18=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646946984;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=/S9zsfwwfyoO/n/8oKtjkd+hx146YrSPE1NakSzihXI=;
	b=F4EkRkhJ/c0SpNw0S18JSDas8tq8bRtRp2Eq0T03jDv60t1iti55uqT6zjYsrnJB
	J1t0F0n7N8tNQEF6b8+dURlcSo1CQqDes2UDVlA61djxGMG9uva/N6ZxqUviov6Cg4m
	dhF0lSr3BtEzfuLcezU9cXDxRFuj+qdF1/GSxoFo=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f75b0a337-53edd820-72d1-494c-8d91-cda04a0d935a-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ea350f917c11cfe3950f0e2eac288f8f90e5847c40824d36892105f3d51377be
Date: Thu, 10 Mar 2022 21:16:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.10-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646946984
