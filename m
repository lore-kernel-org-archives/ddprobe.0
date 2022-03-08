Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 717EA4A8F
	for <ddprobe@lists.linux.dev>; Tue,  8 Mar 2022 14:41:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646750485;
	h=To:Subject:From:Message-Id:Date;
	bh=vnB87GUfQTgck9EqFxR5wDRZKvCdkWkK1pC1NuKu3Es=;
	b=FQ01l2UrF/wb9k6cGH0BNL9ECVtRutdE9bMcJteVGx1QF+eWQ3fyhK968faMCJud
	ESpMIbMfiYl5wVqGEobVUiwEYuoy4wokTZ83tBE5asmBBAoKTwhwu4w0dtyI/WRGIZH
	iLFoQDaabANoFAMsxuzLB9s5n3rT/qrf02jedwIE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646750485;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=vnB87GUfQTgck9EqFxR5wDRZKvCdkWkK1pC1NuKu3Es=;
	b=batbKKa8CbfN3d7ul5Pv9XBPzN0tAYR8HGxgxHCfpuvauyHEE/0/OLPCzWaDq31J
	dAHLaNc0ohEgghHi621G0uroE5HeoyLkjpvtKScsSsSHx+frfWxp97FgbDtMDIwPQFR
	hX72U4kt4wbYuhYSMFht96xFEZbfUtAtlBYowetg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f69fa4923-5613250d-0ba7-411f-849d-b72e7a4c2dd8-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: c3a115517508166ec01392bf78cf426bd0f9ca6c190b08d7be104e74719d5984
Date: Tue, 8 Mar 2022 14:41:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.08-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646750484
