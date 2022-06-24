Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31EB77C
	for <ddprobe@lists.linux.dev>; Fri, 24 Jun 2022 00:06:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656029212;
	h=To:Subject:From:Message-Id:Date;
	bh=D5nxc1GANrE2hi+FINGli/M7THlaYcn7F59rL2qwmFk=;
	b=QCPgk6oBSLaSRy4/7cQZwQgeeYsThI1Pmc82NcTkatSVE6jwxbjf8mQG6lVwHGFv
	t6CPfCGsLCrCXoZoFx68+1dH++/yQP6Z3n8WA8qGhMn9hhlzi7uG0cjOn0WL/99hBH2
	EAMrmRzrbEkIG4hd5W5AaV4SS1wVAPyWPb4yZza0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656029212;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=D5nxc1GANrE2hi+FINGli/M7THlaYcn7F59rL2qwmFk=;
	b=HqL317SOlhiIRucwIbB8lGEbeTW6w18anwQh5lgnRXY8o7ymxp6w/8PFa+FCdOaN
	YC98rLJ0ucpQQdDrw3H/VA7eKlfI2jQucUaYTpizJR5aBGAC2ntxk2vrSqXHd8YQQ3W
	BSiTyM9/XCFNkA+ee1wjWvLTjiaj3wg6IFBLCoKw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018193086ead-39d92af8-ae5d-41af-88c0-fb18f89c3552-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 4a4570ae057bdb0306ed0438f4ea6dc1b3f31494d8afb4e371a482b7e30f25fb
Date: Fri, 24 Jun 2022 00:06:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.24-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656029212
