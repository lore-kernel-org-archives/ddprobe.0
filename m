Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1BBF97C
	for <ddprobe@lists.linux.dev>; Thu, 31 Mar 2022 19:07:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648753678;
	h=To:Subject:From:Message-Id:Date;
	bh=XMyqkRhXhbed+RvdtITdcAsoVPyGNbE4Q6M+qBjUYGI=;
	b=Jk6cuVSitk95hD6cyutprBVsaGE6b9txLNfzym9o4PPUhnVU74l82zFkuFISRgdR
	XsQfjzjzBdDTmcRousgHqsJsfrUUBKSkJ5F1kXLRNDeNY/oNnIFGpQof1UMOnn7kkgi
	3TFN1J9XnydtT0dZc5sj+9JKbhSaqjsYzRgwiwfA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648753678;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=XMyqkRhXhbed+RvdtITdcAsoVPyGNbE4Q6M+qBjUYGI=;
	b=Y712URr3Gw/Rk2zOpeGFWxnasfIAR+sSHAn4hZwwqfpMefrGfiVRSjbY4TqmSFzr
	JxHvy9HXxKOhMMeKEPnNaC9vAX5X3c4SsU2khsMLUEX2GUh3wULdH8GVGJhRlrR76Qp
	gEOKbJn8I1a71fhAqrs85zXOokVq3x21/K9PmEN8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fe16097cb-e0c9a1d6-55fb-43c2-8ebb-4e20c27dbcdd-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 7ad7a38ca7f27d95cb7601a52b6b7dd3716fb2a7859bed4872c6f19a73d019f6
Date: Thu, 31 Mar 2022 19:07:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.31-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648753678
