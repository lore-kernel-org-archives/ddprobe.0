Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EE53C7A
	for <ddprobe@lists.linux.dev>; Fri, 22 Apr 2022 13:49:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650635398;
	h=To:Subject:From:Message-Id:Date;
	bh=cMVbbf+/fKy6KEtGJME2Yt1H+KCnusJiNBeXbn4Ylj0=;
	b=VtcczUHTnb4KcAiTZOCArA794urVke49XIDfoyHfv0ZPW0VBevXZcRZDILJw+41p
	6vdMnVjqVHUTLSbBH1ZYr4uJlCV8LTqImUDac+kdeFSNjh5Cu4yEDXpu+QAxBiXFjq2
	bNBLfp4Z+1ab1Lt5BEKB7rJMFkcPeDWJQWmyx2Jk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650635398;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=cMVbbf+/fKy6KEtGJME2Yt1H+KCnusJiNBeXbn4Ylj0=;
	b=ii/m6uuAdT/fF2phcw4SiuvF4v4gC/E5AvZLdgPs7qtnu7MaHuCy3gwZ4s8kl/8A
	qNLpNwufbfLQ0RQOPfqRT3/x7pnxdwegfcbljhFyfV0IgahKn1VB2uPGpaOhVXOlq5b
	MLM1quTEfVcCy2HDLeRgecGmg37ux1HAzamx8gBM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018051895c78-041684f2-5681-4003-9f9b-e5aa27e08fce-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 494e553787eeda87df423a1557a1c636e4801ecad89109da3961e8242066b746
Date: Fri, 22 Apr 2022 13:49:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.22-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650635398
