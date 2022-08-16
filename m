Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A48F71FBC
	for <ddprobe@lists.linux.dev>; Tue, 16 Aug 2022 07:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660633853;
	h=To:Subject:From:Message-Id:Date;
	bh=ApDD2L2qOPfv6NBzHHXfhneOI6tkNexP9fL+k9eawjM=;
	b=JQQ3DMIkaxG21WlKTblG024qk/pqL09Jr3yjeRjsgBSDXwu8hUTcz6Lu/YLa2pYM
	4daBABO/wtpeL0C1YyZ9iVhmJu1Rb+L3s+jH6gW6F4yNiDbz+nqx9stanne4zJ7B7cM
	lAo45JboBb6gRlmRZ119VJPYWJ7EgkiIQtNTqjrc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660633853;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=ApDD2L2qOPfv6NBzHHXfhneOI6tkNexP9fL+k9eawjM=;
	b=j7Cro6pgOi93E5mR3BagvwTIHRSoIeefzGgPQOixFzCAfPtDOW4G4wGK4kMEHeks
	jNBVtvxJDcjTUvZunh5hA58ifx97p6UXeVtdZe0ogL1BwrmrvKGwDo7Op4FrDqHdxdC
	2964RPPpjyXIsX4V+rNMtOVh1K2t7XzW7wI++8dw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182a57daab8-fef99c5c-2828-4b74-9724-370891badff4-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 0805ffe0c7398c823f2e3b9f69915a87088ba35d8022665a244bf7a7af2eafa1
Date: Tue, 16 Aug 2022 07:10:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.16-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660633852
