Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 09A5B1FAA
	for <ddprobe@lists.linux.dev>; Thu, 19 May 2022 01:01:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1652922119;
	h=To:Subject:From:Message-Id:Date;
	bh=I9nSmM4wD9SS+Pjje2J6vxDP0Ek3+5N7CDYmUBpZnrk=;
	b=gyh64avPW8jCOK7QaF5wcL6d40rFchjGolIpWap7H00nLDpK+YeoDHXjiaCGWVti
	OomSssYaHilns8PNOEvmFj0JBrngmHQghQVOShzoWhjQKUxg1Xae2uoQeWqu2FibqyD
	QUdt386VR90+sFQd9AoPxuxUkQzpOVMyhuvjVVF4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652922119;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=I9nSmM4wD9SS+Pjje2J6vxDP0Ek3+5N7CDYmUBpZnrk=;
	b=WQqxVQDBsjvSvHIhC/tNTyUlb6liY55BETmnE4GVo1J4yt6a22A+5v6Blj6mZ9EN
	uUoAhKTYgPgJ05Mtmiw1VfjXeqzCCvM4n3XycxMJqlHIkkwGg2C6jLLIT85fFEpNnnB
	M2ufIt6hPmyyXXiod1+tuIxpjlSo30nVnz7qfXHg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180d9d5f458-59f1c0db-d6de-4301-a0ab-0b7c0e92dff2-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 9d859bba406b74b16f3db4376e57d40b98edd4c798bb72dfc9c2122c3bf226e0
Date: Thu, 19 May 2022 01:01:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.19-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652922119
