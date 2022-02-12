Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9D8C77D
	for <ddprobe@lists.linux.dev>; Sat, 12 Feb 2022 11:20:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1644664852;
	h=To:Subject:From:Message-Id:Date;
	bh=VDMXbj4CjhMlBaUaifOIzBc0GVUUXrVcf6fK980a7XI=;
	b=CGN/rDEyfWr6jnGzcsW7wF1SNZZL7fWLd2d0EOjm7nbcJR+ChuAlM/L3zOFJk13h
	0r+krTU0eo3K9OKr5qvC7pTQZR3nl2aQuKkBSGTw/Mo/AunkNFeNVP9LOXQmxaK5q8Y
	vm6fGI37Y+Jp+VUBcil50dba8pCq6oLwpX4e7H24=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1644664852;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=VDMXbj4CjhMlBaUaifOIzBc0GVUUXrVcf6fK980a7XI=;
	b=GqtuyDQ4rMrUopB7FhHnTqFdFcuqRAM/qtzmKNlZxhvqOY8JMKnNZ8s25imtxWaw
	lThoyGm3nA8WijWnyaus0B+dvSi3ZpAR4nazEO4OK8TDOMvvYKFn1H8nJmm7OYPaYB0
	pdIOz94kNPdtemJ+QRlcCHMSElNWRsIxm5R2Gbxg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017eedaa0d61-d788bcb8-a1f7-41ec-8378-1a6abeea9b11-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 48f71f15092698ed3049c89d3bf3e8333e9a95c4e7d47443a69ea622a7898f41
Date: Sat, 12 Feb 2022 11:20:51 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.12-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1644664851
