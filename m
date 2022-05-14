Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 236377A
	for <ddprobe@lists.linux.dev>; Sat, 14 May 2022 13:52:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1652536319;
	h=To:Subject:From:Message-Id:Date;
	bh=682LqfXwvryZh/ddu/DVtFLxr+/GEdey3MRexcGDf3I=;
	b=PiC8tgCFIF/xFPXFsic2OfzcZKvwpWU5Ztd/gij9K4UxjDlSCWfpufyQgWGULHmR
	mIi6RPesQSvuRET71ElC3zU+kmqY0xTst6Q17w7KHZyfhqjp/zlV/bRByPwovVgwLf8
	v4vAAjSUEYFgw/EgtsXCpU7TFcoq9UyxQplYO4ec=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652536319;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=682LqfXwvryZh/ddu/DVtFLxr+/GEdey3MRexcGDf3I=;
	b=U9cfq8jVrdxN1LYFK7WdTKEqknoKCSogQ6qt78Vqg8wAN3DHzSlJmASSNn4A/Ddg
	Uvh/KOFsaH5TBvWa3QDFv8KHU1oBfSy+TDrjYZ6CQSC8EEP9LJjFO2ZFu9+Ue1mkL3J
	8nrXOQLXqNMjpJHy54XD+3ltkbwqRexEfv5/vNEs=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180c2d71d89-69dce567-d16b-4f7c-9400-c786b81598f8-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: c060cb634fd7d61848f6a9aeb8bf51c32d32ee90690f693f48bbeca4b26d3e37
Date: Sat, 14 May 2022 13:51:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.14-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652536319
