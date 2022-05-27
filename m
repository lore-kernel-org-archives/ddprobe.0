Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EC5A31FA5
	for <ddprobe@lists.linux.dev>; Fri, 27 May 2022 16:11:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653667919;
	h=To:Subject:From:Message-Id:Date;
	bh=gizxGMZgACKIvCnwCWb0Hpc5qobuxS1omw61EKdhRJo=;
	b=TdPoCSe+PQgNQ+oBTObxiOVCXsfmKSpD52VLwBkFlpigJnrKnUAlHiQym8ssy1Ty
	kCGWNsKL8+3XGFwRcO7/tGd5mDex3giRzu5gre4xy2+Qm08zDR60vngaoQrG5Xmg9Ss
	b+kSIr4VWb0bjiXaywAzLSyEvxCmJvTlfdzZ0sfs=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653667919;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=gizxGMZgACKIvCnwCWb0Hpc5qobuxS1omw61EKdhRJo=;
	b=B9zrKApfZYSE9L38mHXmH8voI/DXGEVblelYs397+/6T3Kri4xqvEvfxdGYERlt7
	9Sd2QNPSTOw7KLTCgZzPh65/tuVfgs3g0EQ5sD8Xe6/rxRe6Lvcnb1outhYyFwCNqnO
	LZVL8xxdhWxoPg2mlPxYq/5Omya+Iz61ChlSEwhA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101810649f5ba-e8065db3-2b42-4317-9865-1577b140e3a1-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 15f2d2b81d186dabbd46a0267fd903f3ae94ffe519c82ce70211c750b664afab
Date: Fri, 27 May 2022 16:11:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.27-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653667919
