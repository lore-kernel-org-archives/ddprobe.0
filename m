Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4BFC21FA5
	for <ddprobe@lists.linux.dev>; Sat, 28 May 2022 08:52:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653727919;
	h=To:Subject:From:Message-Id:Date;
	bh=4o7CwyaTyBHxG2HYcS8Tph+FeIMxY9cS7dv6wdGzJ7Q=;
	b=gF3Crzc4kb6XTlJpw0EirTj0QT79bkRV/up8URQXCi6GhfFjQEs4FqINANlYhMHt
	HOTr2teWjNGcMfzy/s5BK2zaWVsfVRZP9UXcyjq5hjrxLlAiQLm2PAIVAdrBky05wxi
	ZuUv66uOH0LsQ3xlwaihXYXUACdlki6s4N8Lbphg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653727919;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=4o7CwyaTyBHxG2HYcS8Tph+FeIMxY9cS7dv6wdGzJ7Q=;
	b=Rnwqtl9F9UWdNQI6PzctiBZ4+n8So7KEYd1WZRJjmAstFn+ntsQG932cMcIa6540
	5avtrY6whTXs+mbhNtMUTdR7bAU9lSG1qvNC0jXP5lVHvTtZH9z2DutOJUtnUGu1RnB
	mfkh/zjFjbSkUtJVPFAtcH9cXMhykmmcfJ0p25sk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018109dd7cc9-cdfec4e3-17e4-414d-8448-e6ec42dc8bc1-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: be6ee26a72ce4372e5336c39ec029e55f6c15e569e0e4b3a7f2ab34d2dcea8f0
Date: Sat, 28 May 2022 08:51:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.28-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653727919
