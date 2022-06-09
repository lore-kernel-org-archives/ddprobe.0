Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 067547A
	for <ddprobe@lists.linux.dev>; Thu,  9 Jun 2022 11:33:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654774439;
	h=To:Subject:From:Message-Id:Date;
	bh=Mq7+G51Oj1yMjXrWyNRjDmL/3JG2aEoEB7EjadDcB70=;
	b=XcysfkPcJjp/zEzSlL+LdGwUKYzsEPW4fF/SSX+ePzfOp7fa83iz1lmiAVW7jWvo
	p4hBAmWG+AImDKlqYzzzrz/PSDB05Oby/rdfEkO9xsK2NvpHLmWwpE9SeTEU9hxUDcV
	L1WIXZCEQnt23jBTI4TSWFPbchXQjlr5MQwIYVvI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654774439;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Mq7+G51Oj1yMjXrWyNRjDmL/3JG2aEoEB7EjadDcB70=;
	b=iHLW99NzHKFgGgy5lI22jeC7QpDyYTICsw31zbgByG3X65lDsbAEY+/YzGyyfM4l
	s9CuaNbNaJ5JbEhl9OQWRZPm6UvII/duqwCLsHjcpnhR07GnpD4kQ33v9z9+x1sksbx
	PyZlsSdtBe+wIYpek6SUcuvaM2BkaDLfRcfQqStE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181483e1d75-549bd5e5-32a8-406e-8ce9-5ef5c1071758-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: bfe5b74ae7460891a6849295c3e66522b52a7ae6219a5f845bb9d4d4a2a31a38
Date: Thu, 9 Jun 2022 11:33:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.09-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654774439
