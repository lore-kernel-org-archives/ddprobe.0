Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8338838FF
	for <ddprobe@lists.linux.dev>; Sat, 26 Feb 2022 20:56:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645908985;
	h=To:Subject:From:Message-Id:Date;
	bh=iUWG2MflBGXsc93ozcU/yTgRuudlnRAfPTtO2z1YodE=;
	b=G/rqqDrhooJquOYYcqeW6s9G59skcimj74DgYkPjQuete9b0X7W7jMRPjZ12Y49D
	rab9LfNFVQTj8dW601jG6mzLCVTbQLKq6+cfjDDKUqvDncFnY3G1PBfWOYIn8PiDKbs
	6hilPjlVbNuDR8IsGBDBc3Q2kfY6j4hY1qnAY2iI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645908985;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=iUWG2MflBGXsc93ozcU/yTgRuudlnRAfPTtO2z1YodE=;
	b=UfCASEf1gV+Ys+CKEjG2OXde9Jt9skcR0rcuq9totxs3Van5Tb+wnZhf4eakvVAo
	0WaQclT9O+t3Jtpy/BPVz4KFa+PbZ9oc5CTyq+8J4cxv6ltUHWBa5sTHHLm3LGV7euO
	wzPPgxDtBiiuyIJ9VWw5jxirYCl7WCjj4/Rj6XB8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f37d203f9-b56fd5bb-51e9-4b20-b80c-cb6eb8435d61-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 98215cfc7d64331abfa3d8a1ee15ea72acf7bce6cc2e66523d72cf2241c7475f
Date: Sat, 26 Feb 2022 20:56:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.26-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645908984
