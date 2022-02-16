Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 04F60187C
	for <ddprobe@lists.linux.dev>; Wed, 16 Feb 2022 20:51:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645044685;
	h=To:Subject:From:Message-Id:Date;
	bh=bPhYbQhUz5RF7ryEpH9nw0Op4qp3FLtd9ilTQK8bOok=;
	b=I0YJd5hec0aTNV7+2JtFZ+odPkZ7Oxynab7P+duu5aXQnlBVTU4m9uJLXLlZHFjb
	EIxnS9f9lR6uwGKxKUOcuASGRqDxPj/hYiHDHEdtKQi0YWlbfDUUuqg/wB25EH4h5+8
	B68M8mVvaJaGc8iwWm2hfvUVUDEay4RmC0kQ4WKM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645044685;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=bPhYbQhUz5RF7ryEpH9nw0Op4qp3FLtd9ilTQK8bOok=;
	b=N7cDGBw/6O3iiisKAffnT19ovZzAF5rPbVIIogX1JjdfZNI3ooe8+8T79RX3aWUC
	wgo6qX+579d+cCdRPBTRsp6Y4OpA3K3u2q7qvX7nPhDpoLAVcYRXYdU6Vcg+chiuURf
	Yp/Ssv8FpjHeKzV3hN1AeYc1KKl/BpT/AOOBn1Rc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f044dd814-eac13492-2d05-4cd6-8b1e-9fed4d697740-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 92ad7a1050083a5c227a3decbf70ec018549679c40b191010e5ff0cfc3591681
Date: Wed, 16 Feb 2022 20:51:25 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.16-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645044684
