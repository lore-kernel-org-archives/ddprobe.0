Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F03547B
	for <ddprobe@lists.linux.dev>; Fri, 29 Apr 2022 06:53:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651215238;
	h=To:Subject:From:Message-Id:Date;
	bh=MJ3Is1hRReatAdpLis+0NyN7q9kR4t4+Ah7eZvCVaQA=;
	b=betu2sVMRSvCLlC/yFqdE2usLgNe04VcWdeRdaiCjH2JFKQBh8h5vMZLbXp6eOvu
	1FwMWdfvUBtj/x7V51vuzts3ysXXYPZfHKr2bvEj3FnhlUZdGz1oAelqcfP1Cighkr5
	exV4zZvDPz55+99a6DkgLjx2sKnztvP1/GAFhNcA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651215238;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=MJ3Is1hRReatAdpLis+0NyN7q9kR4t4+Ah7eZvCVaQA=;
	b=DkUmDKieqw/ekWfJWG3UT6u8lp33cpw1K3LSGSBWLFtYhdFgywEZMouslR57tlKi
	vDmjqZAWQvRzbuDMQj41AAHN8Y28g2ZEyHboH7O73beMOthmOxiXzMAZ/6XxEYTFpCv
	+la7kkvUut6+ck1fZrI1RYSa7t1w6POm6OkPYSn4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018074190480-1ca6c045-c8e7-40a8-85c6-0fcb67b06e1c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 719a2d0c15f20b68ca29b811a13f6d0624015b0893cd78245dac0ec864028afb
Date: Fri, 29 Apr 2022 06:53:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.29-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651215238
