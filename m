Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 083E72F38
	for <ddprobe@lists.linux.dev>; Mon, 30 May 2022 14:08:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653919739;
	h=To:Subject:From:Message-Id:Date;
	bh=l2RvpJyrZ02ecw6WG6uDrOPYfCY9fYZ5Jxk4qbs+N04=;
	b=aC5Jp+YN7ll6kOzEF3CEePrTGm6nnQbFdHcanvihSXMUuCuVL48gRLaEry3PxhuH
	BRJiEQ6M5z4J1jHgt7vmZ/E3yl4LjGVYqvg11cyg+95NJWzA9e8pocxj5YnTIPZcQAl
	YXBJWEs29MJldWZzfaYnufhuuhgsvJfBY0go2Xzc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653919739;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=l2RvpJyrZ02ecw6WG6uDrOPYfCY9fYZ5Jxk4qbs+N04=;
	b=RcyhPGiumqlFoXRoeQABqiugnDGPc6fPAUFeGnLvKVFE+/8ibMHx+Xd/LRdVBHqs
	PbOoBE5DYGydt704uTsaRq5dRqteT8ID+eXTeNIzI6c7n2raesLaRnw+Ac5BLDNLQAp
	Hsds5mi6YgLOqUyXe47LvFmmGAd9bYmfTtjTcOwU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181154c6d7c-d18c6cc3-2b2f-4ed5-bfb4-ae168265adb0-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ba82139f7fe158bfee466902bddcaefac03c3a489c4cb7d524d2b2846065eab5
Date: Mon, 30 May 2022 14:08:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.30-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653919739
