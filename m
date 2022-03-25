Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D00767E
	for <ddprobe@lists.linux.dev>; Fri, 25 Mar 2022 00:09:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648166998;
	h=To:Subject:From:Message-Id:Date;
	bh=/hJaJvmXI1o5ftf92JBmKdnvzMvWGUgVtyzJQxM3x98=;
	b=Wek1Zxt0u3Aw/vQCjVsd6iooYf6STIxiCjpIryfUucZmak1J+b+kuugnzNYhUr5i
	nQllCAFqcbhtB57VIKrEZwxkHhdJo6AcJL4FrJwCv0/P7/I2GWCYK7YPlmvoein88X8
	rd4OrPA6yKghj3UiZa0KEmR6wpqrfY7NYm2Lzs6Q=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648166998;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=/hJaJvmXI1o5ftf92JBmKdnvzMvWGUgVtyzJQxM3x98=;
	b=gdW/9+Fr4BBxVEHBP1oYx366MdOqDw8y0SF6MfWz8xE57lCcQ1Ob1pxDPGSuxkJM
	PFeDf6Po0Czjk9vRwnRuGu/N2m0crVO7F8JfZvxoFLKqdrB2VzCJyfFxrjOv6I8Qr6c
	TWD6qay8QkHFhnT9PBzANGb9U879phmVF++esSms=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fbe68913f-3a644412-1429-4590-864c-f6690b8ef5e2-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a2f3daa5d52a814da27e0647b119b301e109b57e61b2e63c2d4a54a81eb006b7
Date: Fri, 25 Mar 2022 00:09:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.25-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648166998
