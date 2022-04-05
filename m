Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DEC9315A4
	for <ddprobe@lists.linux.dev>; Tue,  5 Apr 2022 10:31:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1649154718;
	h=To:Subject:From:Message-Id:Date;
	bh=hORemzLqNs3z4eFFBdiHe/ipOvHkT3wGQgjLJ1CSwDU=;
	b=TsmBR5VLGmcMVmWzn6ITX9llAE6NgNhGXjxUqj1dTkxLfdJ05ttkdSONjVrUlkPg
	OObjbFlGGhMmNkapfZ5HF2xP7zAOMaT7Riwh2ewubb4Tm4qLi3dV4zYrDRd+R0s1v8D
	zijS1rwheTVG4p52q7+FeIA5uta7JDf76DUQy+Fs=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1649154718;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=hORemzLqNs3z4eFFBdiHe/ipOvHkT3wGQgjLJ1CSwDU=;
	b=QiGcF4PuWDfYCDXWijv8NhzycYN0IQI4JeeuYsKzCnUW/vj1v5I9dcBOr/DMJhVs
	GEfM0Uf0/QIKkXm+u/3OCJXR6tT5YIdNgyqjrRyDsC+8lAGTpMtj+fXxUfYoFZUu0zc
	bnu6zrBnUPPSR2X5PViijQULtcXCZyqYyLzXJ2sI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017ff947fa4a-7c96b64a-156b-4f12-b4bc-6415dea38f5d-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: d25185973c567e95bc1f673eaca4cffa20c5489c2653f966141ff88507f61f2a
Date: Tue, 5 Apr 2022 10:31:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.05-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1649154718
