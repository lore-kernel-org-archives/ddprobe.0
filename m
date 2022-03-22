Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B3DA8621
	for <ddprobe@lists.linux.dev>; Tue, 22 Mar 2022 04:41:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647924085;
	h=To:Subject:From:Message-Id:Date;
	bh=3CbzzPMD1o3NzFHzLB7Gfk9t+abjn/9YtI/aUMWPLKk=;
	b=a9JA47Rr/Wnl6lUJp4yk+oUY8j1yqgMT5c+KE7YnuZcTzcP9mryvdhWzTAR8dmls
	vBXf0R8cdfHw1G2Uuxxx/8oSVnfIAUN/haBYtu2n2+G8mEUiLNXMpuAQmzLj2w2+LCq
	wNj0e2V7+A6J/pQ1ndpZnfV4PbbyApIr97fojQ/M=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647924085;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=3CbzzPMD1o3NzFHzLB7Gfk9t+abjn/9YtI/aUMWPLKk=;
	b=X/Bqym0azXppOiN+J+/mwPHeAz2AzK8hKbgeJt+hcBsh4VDVl6zWRuQLUWzKbaVW
	NhZz3dUsg0Bluc9pmT3UUnRjUXGo6vKHqbg+Er7ao18x3Z647BfaMbAmC90FYMo+SBd
	UKmmGLgJlScPp8882MUUle3tkdvGpkoPphVKWLRo=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fafee0035-3dc3463a-f97b-49dd-953d-2566ea10fc16-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 99a391c1ec6b72e28408c5793d99f78b8370bace26ff078a3e384f205ceb112d
Date: Tue, 22 Mar 2022 04:41:25 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.22-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647924084
