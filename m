Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B2D010E8
	for <ddprobe@lists.linux.dev>; Fri, 29 Apr 2022 10:50:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651229458;
	h=To:Subject:From:Message-Id:Date;
	bh=lzjg5y9zH6YysLlNdXMP60KuhwKeTN96jAiq4ypzXg0=;
	b=ccUXujT4rLXAthBD2LJMUSDLDRAM7UpGUwhbUsrmIoi8Okw45UqUr1ZDk1bp3Sx7
	IxVZc53V4a8C5Q/KnHNVxHXEnUY4Kkt56lNC2mEFaDHzGyrTsnKhZTbS5DyKN6ZuYIa
	J3V7THDVSabYhtWsN8xXz2JMrMSu2xGkJhLIzvWk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651229458;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=lzjg5y9zH6YysLlNdXMP60KuhwKeTN96jAiq4ypzXg0=;
	b=SWCBo+nlL4bjsDV1nOvEPbOJJIgpjc8yIQxODtJBEq6yaajU7/h0QNhrw0qq053T
	0u5imeuRtZWVPCHC1t0tflZn0Qns6doytk67SfwUNrXXnzqUyhH9+1KT3OgEBsOJ3jJ
	vozjOvXj03Nn4V5lXK48b9qYR+NhsIWTThUiFq7A=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018074f1ff65-f3a4822f-e433-42c1-9a54-49f324add475-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: c1a7c902f5bc29b6977417bd872d83038ac94a478922ea5b8520c436aecb4987
Date: Fri, 29 Apr 2022 10:50:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.29-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651229458
