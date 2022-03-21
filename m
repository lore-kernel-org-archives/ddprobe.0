Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 81EE74282
	for <ddprobe@lists.linux.dev>; Mon, 21 Mar 2022 12:06:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647864385;
	h=To:Subject:From:Message-Id:Date;
	bh=+VPCnaEGXPfrjUMPThgP1qdHx+yl15mWuohSnbgH3TI=;
	b=AWDQheffcCBICkpYKkUAQnpGuy81Bc6mvVJBCj8H92bMkTPIStcGFjBZHf8PYySs
	CZ15FJ0fmp8T8eic+Cp17d1npL9ENpmnlMgmKjfSb8cmh84uevbaeYf043lDJ/b66Tv
	I08DdSQlFPA8XRCDzY8zpo+ypN4ZMsZNrulqpz/4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647864385;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=+VPCnaEGXPfrjUMPThgP1qdHx+yl15mWuohSnbgH3TI=;
	b=dbSS2hd2jQvodi6M8iBsAIqdbMQxFSWb4UdIKGwL1Lb4/CbZzPys2KTzTvxckHeH
	eYzQflnWf4zGVFGzfR3bqM2gXJDqnsnVd39ffoHRRpdNRmG91509r68Db92ZFFaVGCe
	nHjSNpgBQ/FvbOgQk7wmMyZC/CaNrrNHEMnjTCEw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fac5f0d3f-d8785c23-3f7c-4a15-81ae-464797c889b3-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 87fa0dc2970cfa2efda04d74d98a42eff0ce9d7db1e67bafbcd9ac82d35fec5d
Date: Mon, 21 Mar 2022 12:06:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.21-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647864384
