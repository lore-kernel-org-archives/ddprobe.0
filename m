Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 96640A4D
	for <ddprobe@lists.linux.dev>; Fri,  4 Mar 2022 11:11:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646392284;
	h=To:Subject:From:Message-Id:Date;
	bh=/f0zRag5bht3r9JpWroEavBinIbzmsmQE+eFNPmALSA=;
	b=ZIW7VxJMHJRccKjU/kiEubZyr2NE6rzc1SlhSrmCh1EmXWN75YrofKM05jPANx5e
	LJQcj/0U/uoHVxisaYeW4IXGJVvU46zBJDiIRrra0/4V1NN4kuFn6G+iPVU96hfqXq1
	DPEwPlE5/1ZsRPjT0Xrj+QMbbuyFRqmjoheMqoyI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646392284;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=/f0zRag5bht3r9JpWroEavBinIbzmsmQE+eFNPmALSA=;
	b=NEFklC+jsx5W/M7hCWg+m+jACQgIaK1xm4ka+Bk5V0n+uLGITM55N+mybUoqMDKJ
	SSLRww9B6/tZaxTJtjNdLz/vX8cxULMhaGNZt8oZsgUDIRyfC548VcPA9YUNHPcSyCn
	3+HqG05RACgqGfeLaS9FQOQ57mxa3dK7umHzUrcY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f54a096a1-01b042ac-c722-452c-801b-9bf960716eb6-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ec89d09982af8a469a8905f7d57f098bba9347f5759512f14c8518be07ccdd99
Date: Fri, 4 Mar 2022 11:11:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.04-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646392284
