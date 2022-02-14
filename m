Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7C86265A
	for <ddprobe@lists.linux.dev>; Mon, 14 Feb 2022 03:40:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1644810021;
	h=To:Subject:From:Message-Id:Date;
	bh=UU/ZrsYhWS0Tkwz3CRNy1Rc4oz2P4fattg/tYjt5C5o=;
	b=epDtQJyi0LqK+FBGJuwf9aqaGTUxClq0gts5gHQ+mMjZWs3VXVYZay+kcs7HfZLb
	nUYUFWF6VTVTSVv/cMcnRFs7CTdz9+Fy7n++TAA3NFszWBxDz4EMyWrQ6zaVqTsvnaV
	/eZp8MfDLnjnDhECLnx/hwtQ7O5tW55CDMxZzxew=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1644810021;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=UU/ZrsYhWS0Tkwz3CRNy1Rc4oz2P4fattg/tYjt5C5o=;
	b=M0lZxWHquJhyvpqXvLMyEr/f5WYlv2/M2pHYFFTn7fpaXzRIHCobjyXsSaokcrZC
	7gY28PpaqQl333XrST2JO5r8tcpB+duX8Dqbw7HIRxjQRmvH2/jBBuFAxXqaqK5/h6A
	j6GUeZZWjt/BntLRFEDLqeDzXXSe5Q1RHsEE+t/Q=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017ef6512a89-118c20a4-6bb9-4d29-9e3b-fe0cd89c71b5-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b2b9c4dcfdb7fe72379b32115ef2e2b793ffbe3ad3e21bd89c92e24aae8c266c
Date: Mon, 14 Feb 2022 03:40:21 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.14-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1644810021
