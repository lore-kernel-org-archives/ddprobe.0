Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 157517F
	for <ddprobe@lists.linux.dev>; Sat,  7 May 2022 12:39:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651927198;
	h=To:Subject:From:Message-Id:Date;
	bh=IqP/cDeeNt7gMZ+6uZp9RXkKGxfc0yDIOOjJPU0mAaI=;
	b=DHBQkJcfJ91K2P+Db27q6lJSgIwC2dSlcwx52HkW9tcANJHX2zRtpg/8N7GjbxSu
	D19KQMsA9Jf2piH5RANYvFjjHuWjWNJ8DOyqiB/zMisyL7avXc+5PJh0cOJWQrJ+v4N
	ut6RW1aDY2AMC2Dcs6TwsOLL5riPOHBbZmgeLFak=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651927198;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=IqP/cDeeNt7gMZ+6uZp9RXkKGxfc0yDIOOjJPU0mAaI=;
	b=eexwxFTLcs7mT5LZKHKMO1uE70HEvmuzYjk38gv2nUfczJJwbMUT2eEZC0OZICxN
	K/rdyJduVNhOUIEbuNsbOI58VDUUKnpe9P68hUryqGjl3tLQQm4ZSNnSwdm64UvUZhW
	Ccwk64EGdln/zyd0RisO8dwUMWeeBPdtSkmJN70M=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101809e88aa48-edd48911-6418-46bb-b85c-f8f75033640d-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 59a098696abe810831b91b5fb5395da990155047569df755c06c789b622f741f
Date: Sat, 7 May 2022 12:39:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.07-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651927198
