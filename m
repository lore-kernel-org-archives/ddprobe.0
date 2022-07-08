Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24ABE627
	for <ddprobe@lists.linux.dev>; Fri,  8 Jul 2022 01:26:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657243612;
	h=To:Subject:From:Message-Id:Date;
	bh=IfKRUdkZzS2lGR31jQwLFA3sbHFkmRUQPy3kZkwrRKw=;
	b=S1onsWfXHguepDueLPTteQdYia+21vrA79L22K4QUK1rq+zT34JRdriCuvzsBDY3
	jYEMxo/YdPBnjKJLECDmXT8I4kngdM9vrOh62fal+LQ8p0MQsTqssgpvVId5Ms4RpFU
	CfAHgCEO2vfRfp3+Q3sfjzFWfc5bGp73xPkOC0G8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657243612;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=IfKRUdkZzS2lGR31jQwLFA3sbHFkmRUQPy3kZkwrRKw=;
	b=VjMsgQD2ltZYFOzO4IRKtVAnMo4VwXl8zjWYRBwg3WWsWE/tuYmANt1Rm1nvFmt6
	CJXaiSF+ZD313+qyKhd31auI4fVJmJ4s2x5M7CW1rXsNcIMKyMbkh1BMvPIIDU7uG+c
	/7WhQkgmhPjeMrgH5fyLeb7kV8VpTUQEBCnDJEWI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181db6ab4ac-e73054e3-233d-46b8-8142-8acb28884176-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a50e42a21c0f00ffa12b6e60999967b07b253f2a9eae88276739e6a90654c939
Date: Fri, 8 Jul 2022 01:26:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.08-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657243612
