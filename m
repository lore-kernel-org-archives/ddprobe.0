Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 65A764683
	for <ddprobe@lists.linux.dev>; Thu, 18 Aug 2022 17:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660845052;
	h=To:Subject:From:Message-Id:Date;
	bh=xjeesNL9wjRDmRuefuQdmJrJJ9Y3FuOSMPqAC9cFtcQ=;
	b=Rr/nQyhwcq+Vrk0a2DRVUX9t+B3jbGNcxo1LT+x/Jvj9dgNDAm8zoxFqQHTubdjK
	CtlfyOeatGfYTEF+6kAopBKInx2pIQOXxzZh5eFgaTpWdgK8xbUWSN6GRH/vJ4OVpBr
	z18UuVaxYGJE+TqIQ3BilDaEfBReo7CMHiAnaWXE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660845052;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=xjeesNL9wjRDmRuefuQdmJrJJ9Y3FuOSMPqAC9cFtcQ=;
	b=ORLs0D0t6UckHzEEmMCVRv19sw0EWnxjQpHKp/DNe0lZC2nKVmvLuIpTvkeKRmPy
	1zth3PswgTTS2u4BIyH7kfbL9DDf4Al9pluLresvJAefEWv4fNPRA8Wt31Xc2Eqfl3a
	ahVTpO6gQjk7/o8BSC65+YBzk2kKVff69nO1A1oM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182b2145275-e638ea17-2661-48d2-9701-f82280d26c71-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: f729f8218aaeb41cbdec587f44cfb4a982c0605a3cbdfdebe5421cb7def8dec1
Date: Thu, 18 Aug 2022 17:50:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.18-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660845052
