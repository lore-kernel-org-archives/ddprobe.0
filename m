Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 75FFA5116
	for <ddprobe@lists.linux.dev>; Sat, 19 Feb 2022 08:31:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645259484;
	h=To:Subject:From:Message-Id:Date;
	bh=aFJhPD3b9ADbrW+lSrkGpZ/QG9NEA3y3bOR8ns5DfNU=;
	b=DMJzeUQO/09TJdeim5WOh9aNj/PwkOVSX8J/o6MIHXqSOKJtm1maQAMeTRHeoW+M
	7R6JWSAfG0yNQwtgTM6HuCOQ20cKuIaPeEBBmm8ImkWPVHguOCLYe3rWIOiEtzZNlwd
	A0CcCSNk2ZuOiin+0HKq4PdssLeWenQr/rrXG+wA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645259484;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=aFJhPD3b9ADbrW+lSrkGpZ/QG9NEA3y3bOR8ns5DfNU=;
	b=UsqQT3fUbkD9+6tdV6ED6q3MU+YFgkhpwAveKG1GcQO5jDqWRdOLQ00NpLZ63mkZ
	l/MRcdThM8j3KSsrP+yFw61ReNRMl6Dt4XlMhvpvxi3E+3amIUHsENkyHk9hqBrR5YX
	jnU5+cc9PG+/5DjQ142mepJTA5XZOD/HvnWsDuG0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f111b6e5f-a4c34402-09f4-44a8-a6a3-786e54bb026d-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 8dcfe6d35eeabe1642785717700e6be29ecc5081382862c8211bbb3d8c77f57b
Date: Sat, 19 Feb 2022 08:31:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.19-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645259484
