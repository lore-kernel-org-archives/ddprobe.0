Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E9F4028E5
	for <ddprobe@lists.linux.dev>; Fri, 18 Feb 2022 17:41:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645206085;
	h=To:Subject:From:Message-Id:Date;
	bh=mojRKL8GhJxmVGoOF+QD4JEZf1JMmhMU659J6j/HvOg=;
	b=fj4j54TU8ygnaGyLxqJlKfqfiAts6obmm5uzk8BUDsivZFfHbc8yWdoclHvKXlkh
	EO7pn3T62rbLf+J/w8GI/9+RvdGFEg9v68lR87c9QHF9bUEJxUUVK5U8EexKX002t57
	NeGWPUW+NLk1eLi4E+6ozCGFVMTzHzF+9x3WyI5o=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645206085;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=mojRKL8GhJxmVGoOF+QD4JEZf1JMmhMU659J6j/HvOg=;
	b=ceV8S+px/j39ZbuA29ORgIM+NtlmGw4Mb+pyRkv7iFNr9UmU+dOZJCbVdfD2sBAI
	5sZ/IK2P4gn9jVhlE//ZHv7mF2vTQRYPSyuhGI1ZC1Y5YwIXdoS0FIi0xdC9rwpH8Q0
	Ro9OkOTuZ/EP9dOu2AwJbu14QSrjpSo8XJW3fq/E=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f0dec9ceb-d0d2f437-fb71-4f4a-838b-422a141d05fa-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 65ae856542d4b3f3303b93a21acc763438d9450f5433cd268afd442e9c27c68d
Date: Fri, 18 Feb 2022 17:41:25 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.18-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645206084
