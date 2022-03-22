Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B6B00622
	for <ddprobe@lists.linux.dev>; Tue, 22 Mar 2022 02:31:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647916285;
	h=To:Subject:From:Message-Id:Date;
	bh=XNjN3XVCK6noKhdakw5AOs59Wt7HRDieZKFr1l+1NiE=;
	b=Js+789tMcJwp+Es7i1jDoUG6vpmQFXT5BFgn65a1SMYqtXQYNcXtz1oXY/12Heh2
	uFqJvK7gMO327VyniAsfp/gBCoLXiUqDVRvvKGoyPFtNzHKwRFG2puLGqAC/XLvGYCC
	0cjxUYARldVhp3EcCjy3uwbUwaSG1TRT2rqXJmAY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647916285;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=XNjN3XVCK6noKhdakw5AOs59Wt7HRDieZKFr1l+1NiE=;
	b=TXtqACFozb4OojabdCOPo/J0eNvQ7+g7zYFSU6Bd8BJR2KlaDFBOz70YCC62Cplk
	1P0aATD8fGALd0bzXubkg9JbudF/kSIB2+7wAjJcW9pDG2BftQvvEnhfnnmRFxnnBmj
	LUkk1bD5Zk/FpowOTS5Ot2lQKw20JwvStUJHdnXc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017faf76fbbf-7c588eba-f8a2-406f-8209-f6d8766ad8fc-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: d8b9623cdb615c853b026fc64f4c68758d571c00f68350f0c4d10900f75d32bc
Date: Tue, 22 Mar 2022 02:31:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.22-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647916284
