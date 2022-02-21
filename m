Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8954E20E7
	for <ddprobe@lists.linux.dev>; Mon, 21 Feb 2022 04:21:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645417284;
	h=To:Subject:From:Message-Id:Date;
	bh=/m8vW8GFzNJ0pepKWnNfocQGVUhrhCdpl3mHTTtaJ3A=;
	b=jf3pQxCpFcZbh28/xBppdQxMazWS0McDNl/Rcz2UaZWKGylbYsGIRqr5Nd17Dy6K
	mU+e2BNjUUHVyhhqaJxyTP9CPKcguV41ZiJKJ0/Lu9JBn8L5QeVqpzQmf7Mcq5U+m9g
	Ma0LRgyXMGDfRkWjCqMRRBHWJdjxtDb4IOVyIoFY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645417284;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=/m8vW8GFzNJ0pepKWnNfocQGVUhrhCdpl3mHTTtaJ3A=;
	b=K7xcFyIJuaYfN0BoVGDSHaOCa/i/MMd+0rcv76F2ZggW934YbHJx5xA3qCAzJPmu
	46V5isXoOCZWfvghnTeoY57RO0mdtNOoGcwuVTHdfqMxlbYAXZjk2UZbR6iq5sgPnor
	fHcVLazqoJfSuSquJpy4QGtFkIco9utHJlEmYOFI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f1a8344ab-3f30a2b5-8a42-4a27-8a9d-2e7ffbe35241-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 8efd4cf47a50672e7a588afca1bdca3b22ad0fbb7c5d95e665f17a7f20836f81
Date: Mon, 21 Feb 2022 04:21:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.21-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645417284
