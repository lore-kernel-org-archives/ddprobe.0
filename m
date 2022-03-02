Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AF1787A
	for <ddprobe@lists.linux.dev>; Wed,  2 Mar 2022 15:51:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646236285;
	h=To:Subject:From:Message-Id:Date;
	bh=Dw8kW8lg4JF7In9gfWotFG2Jw8FSWcGZdQ8R/L26Yzg=;
	b=Wx+Vitnnse+MQbCmOu1fXRpSC/ijn+YCuQKCLEyasF+B+kZBZvHay+lYIO0jMBw8
	J7ooWsT/EklDL1nC2mf0jxgcgToLd9RPOs66GB5j+NeJeaQbLqkJ74QYaqvYIlw1nCR
	mGbpVJX7vDgPjFuuWNBzDeWPeGBNa3P+WaDq3RCI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646236285;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Dw8kW8lg4JF7In9gfWotFG2Jw8FSWcGZdQ8R/L26Yzg=;
	b=j3S2tU4O75vfxfhQahd80qCmZesRih60n8Faa5kWe+2CqIzFtIpQJth4bbPVz69e
	H1JQKByvMUr5AGnVeCo7PotiQbsQEXSXpe+xFtlbb5c70IKLDqCalQffrY8D+vZNqvZ
	XYxVUf6qHDZt3LADclsttiqOpeHeGVPHcKzlIOqs=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f4b5437d6-f2e003f8-33d2-4605-a0b3-8a4af5f29f16-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: fedb901e962db11b4057b9a29c1949877827913c4d29119c3528e3cadc19bcdb
Date: Wed, 2 Mar 2022 15:51:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.02-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646236284
