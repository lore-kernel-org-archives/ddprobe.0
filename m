Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6C8B5559D
	for <ddprobe@lists.linux.dev>; Mon, 28 Feb 2022 14:21:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646058084;
	h=To:Subject:From:Message-Id:Date;
	bh=AXxukyDJu1sLYZXjmx93/4ecvQ+3C5vChUn1M/97VtU=;
	b=hCvgc1L29p2gVBVw9WlG/OZBo6oBuTByEZCLu3V0iO4Y0/V6Nen18HAA4yn62yga
	+pzBUjgNmKAo+LjOnVXqcianR0xuL6o4h7vbgL7odSA/pf+pX7pMTC7fG4UlyqHdLUu
	dBWna/mX8RVUadUBoeUpNKMye0HPExAP4PlWXd3o=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646058084;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=AXxukyDJu1sLYZXjmx93/4ecvQ+3C5vChUn1M/97VtU=;
	b=SBYzlCxSR/C6rMWCPwVopLxuiPYR1nGAZLjKRbz+YoYYMRI/xGVHqsrYbxCjyjzg
	YsLcmuaMzNK11c29BMqbPW0PKz3j/JpEt2+3/kZn/i8s+FjPvDTja18Gt4CTMrqlraO
	VplG2C9uPxyvkI3UQWEzUb3aeXCqVwpkllumOT5c=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f40b5199c-62a4fed8-7356-4931-bfdb-fbb5050e5fd6-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 20580e3711628a06a3ab88056c5b4ac778b8c77ad16cf1647fc68b55ab29b87a
Date: Mon, 28 Feb 2022 14:21:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.28-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646058084
