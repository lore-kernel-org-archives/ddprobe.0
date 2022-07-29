Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 692CF1360
	for <ddprobe@lists.linux.dev>; Fri, 29 Jul 2022 11:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659094252;
	h=To:Subject:From:Message-Id:Date;
	bh=pH52t2nFfFbvdTCgB44RW5pSFY+CYZyff1L19l2kGpM=;
	b=eeDsMyk3RSBvqMi5TCNAwFXfbuQsJ+63NbVnPlG5yChP7F6XdxyC5YfTc7QBl8iC
	0+34FCYHkZX78oodlazvEk1LjiC/CSdHpCw0cZhOwPObVsABFjor/F4lJ0v0mYi5QO/
	eRWG+chFxOcmuCoFlKyAtv6CZirrbGTUtG3WAUCc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659094252;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=pH52t2nFfFbvdTCgB44RW5pSFY+CYZyff1L19l2kGpM=;
	b=Z9rqYm9+jS2LTBcLZTCvmDaNvMpSfR8m1QopSCh1f5h5HUfB1pqv/ve0GNjisk4B
	LjF5CkXWXoCEJDe2Thi9d9v/8v0A/bHAPyKQdkSP3bcF/Zo7nBpcGXbDqGCLu/dDKuw
	b5bntp/WGdJ95UbblYYkPiUL5BIyfip78vW+kmEc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018249b93bfb-70fd603f-63e4-4999-8efd-8af990ceb0c5-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: bedb75486913cc436f9e37b5611f9ab12855c1fa82d6468a645d5abd120a0930
Date: Fri, 29 Jul 2022 11:30:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.29-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659094252
