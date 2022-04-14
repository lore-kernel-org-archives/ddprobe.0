Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 035CA7B
	for <ddprobe@lists.linux.dev>; Thu, 14 Apr 2022 09:17:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1649927878;
	h=To:Subject:From:Message-Id:Date;
	bh=hEjmBsIz6eRe+6tIgXhsUPZgrL9CBgpAIEFKn/6OHDE=;
	b=hVQm9RLZFKSbLosIXbgougkS9mhSgytrfvS4oGCxmnyxlpQvrJs4kvDtWOoxb0V0
	b5Jm8zAdaSB0icJSovp698/wVRuKAH68VOWWH5mHFikyk8Aff3ZJ6GkTv9P7+MH3ejQ
	AAAiGzdKq7D0iN3BFEtpEMWAY/PBWncx5jclvsQ8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1649927878;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=hEjmBsIz6eRe+6tIgXhsUPZgrL9CBgpAIEFKn/6OHDE=;
	b=JajNuOlxm9O1pcuDo6z3R49avaAZ7xA5CZ7xx+fCONQ+XMxj/ojoFjwibVzvXDeQ
	zrXyZYQkd8uBCGQdtSDXvO+NNDRifkqYV4eeWO2VVKOhfkiEKomtijvsbMwv93QpANr
	Dolx7gqy9qZQFeeI5JPTY0OOB9UEg2PYnQr0hvWo=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180275d7694-40d45f4d-961c-4811-bbf6-b43357097c9b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: e93daaf8909198024d60d889648c168243f2f2e1e5311a784d82c360fcb86615
Date: Thu, 14 Apr 2022 09:17:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.14-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1649927878
