Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B75DD7C
	for <ddprobe@lists.linux.dev>; Fri,  1 Apr 2022 20:22:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648844579;
	h=To:Subject:From:Message-Id:Date;
	bh=eZSBfOfcJcw0sb7YsVo2TcJoRQi2IquAPo/Ehs0fGh0=;
	b=claApxDou3BdLDvqhgNDmYZZvLE5JzYZFjeXBSYRddOeVd5anKPXL/rDoOxnx6H8
	zY0CEY/tGcjbp9Iv+UIIszN792u7+Z6W4KdnkbwQWCJPhYqgwNquy/5CJ1bEWn7XtVt
	1GKqLpwkiHWn8f1YRz5JNWPV0O2TskPfrIaWsjwk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648844579;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=eZSBfOfcJcw0sb7YsVo2TcJoRQi2IquAPo/Ehs0fGh0=;
	b=dsTEud2ursyUnLDDgVZJsNGI31zIi8sSckmYJMQb6bZFGTF9Rq2M7TsCYXcy6q7e
	uRdxouG7TIcKvrIDir4myL0sbn8Ran8fdUeTgLVNzx+/Wbhjh9PiMKHNdwytHtHBxs/
	3pUXaVRvK+M2k0qu1XAbCOGEeGtDWlWP05S3yxag=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fe6cb9de7-65ff6054-ca4f-4608-828c-5a17c6059c4d-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 7350634d9ec50fdd9d8295ced489dea731df818cb73c73abb41691bd0d0efbc3
Date: Fri, 1 Apr 2022 20:22:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.01-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648844578
