Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8124B64E
	for <ddprobe@lists.linux.dev>; Wed, 23 Feb 2022 00:31:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645576285;
	h=To:Subject:From:Message-Id:Date;
	bh=2t5+3jRTXXxQlsIKPvx8INuqJhjYXtHQAnWXi0xE038=;
	b=W+Mwa/6iWIla5acwiVbumJxDlFAaM0bXL8ozcapy0ir5abWIqp1h9Zgrx4TsqakE
	QLhynyzG9+5nB0eqCUvCpaPLEDwoMswYTQz65NHfDeULQ9YSfeFadsOf+V5lbsbjQrV
	yq7STWFgt0/G3VKkhU8E4O//CnJQJFMapeFubxYE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645576285;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=2t5+3jRTXXxQlsIKPvx8INuqJhjYXtHQAnWXi0xE038=;
	b=VexLEY/ggjk4rWoqmDnfoiHGFeeCyZBDyIK2RwBUBd1jE2K6d7Rs5pqIAhRZNmNw
	e7IiY4X4JoZafrssXMot5lABOpp94Y/nBnD9GIlhEusTb9tOLXrrKzKeXOYDG4SGfR/
	xoEHW6bxet+ist4amYeb8idWwdTLyOmHwTFiKCiU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f23fd6adf-62aa4e85-0a9e-489e-ad22-7877474d5918-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: c2b4d7211f42c4c4ec5e3118dcd17939b68a64eeeffc507d3a8039ee0908dae6
Date: Wed, 23 Feb 2022 00:31:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.23-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645576284
