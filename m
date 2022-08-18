Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31E5F3C35
	for <ddprobe@lists.linux.dev>; Thu, 18 Aug 2022 11:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660822852;
	h=To:Subject:From:Message-Id:Date;
	bh=5ddquc0O/v56cXJ0ehcjoac2MiHLLH4O3Sf1AFaP5eQ=;
	b=AyDYrzhOBZZlEdUom5JMue5pLzo+2H5zVYEM6yn1ETU7tW44y9QRgFf+d065hSzP
	DZyyIq19UxZVq3w5T1Ty+3zcHTLrkECbxZrp3sLiWuEqXMKX3wZ1p5aRpvN/g2qpMX/
	L69GxRpj3ixE8HWsVae8+YXNKluHAAXG3p9Cid3E=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660822852;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=5ddquc0O/v56cXJ0ehcjoac2MiHLLH4O3Sf1AFaP5eQ=;
	b=KzvqmRVaN9Sh9cBhYm0Q6VRYqb9Zqva6OlpnNpV/xGzXZPFVTHwmaH+s33yWDA/6
	qoa7/rMwjfnuACXXLYIcXqnTE0SvKzR0lMgKZQu1QXhADOw7rj9KLanQFhcx4bYHVbh
	s8+SF477AWzcJYbXm3gMktYDho3aq563UG613B8s=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182b0c193bc-ac15cad4-c416-4db9-8eb3-9e6526975379-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 340b4240b3f6bbf246aef41d0e8758fa9f7fd47d002573aa67ce48600c103775
Date: Thu, 18 Aug 2022 11:40:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.18-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660822852
