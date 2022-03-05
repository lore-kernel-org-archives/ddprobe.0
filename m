Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7F9077C
	for <ddprobe@lists.linux.dev>; Sat,  5 Mar 2022 13:46:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646487984;
	h=To:Subject:From:Message-Id:Date;
	bh=cRLoXjSkL9p907DKVye6M9rKB5pDZ/ZGQEM6MWvOsSw=;
	b=IyeASlwpVeC0Vr8du0GHtxs9AcH0h1cEy3rCrzCQNWTUvZyR+KOGBMI5Ji0km/dx
	LSpnahm6bCPKS3POjLPtboiXZ8T8VfvG2BL+Qps9nFXuNnadoDhniASv21C6oZEQ2WL
	L4e0Qz4RX9J4oaiw4SEVLZp2IY/IVzZtnRUXOqH0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646487984;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=cRLoXjSkL9p907DKVye6M9rKB5pDZ/ZGQEM6MWvOsSw=;
	b=KO03V3QADE6pRYAMSaGRI6sEf8CaukiNyG38Nr9YJNbpeA9KnQH4rT6V1pt53rbD
	jqAFD3SJ1nMRBE2DKgjK0VTXbCGb/mu/A4hxdhmHSeUyhEKQm/XdRrzVDk87r7Nd+ad
	lemgDGTgMwERBTb7LC9zEh84r08QVkWiOPTV/nsM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f5a54da69-085d3349-e045-4df5-b0e4-1b320c625ccd-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 84ec0b721b2c0d277144cd9e00fe61f65118ea8fe21cf3a1f17072c58b92168a
Date: Sat, 5 Mar 2022 13:46:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.05-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646487984
