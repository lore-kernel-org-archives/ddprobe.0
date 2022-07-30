Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 66BFB1FB8
	for <ddprobe@lists.linux.dev>; Sat, 30 Jul 2022 02:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659146452;
	h=To:Subject:From:Message-Id:Date;
	bh=8TKIdpQyTMLjSQW2BCgJ2UrwV720qQSAFdng9WEbw0I=;
	b=Y+64OIs4ELQMZPKwYMIg25GIBuE9Ik1ko3rox+9+/Ws7u3lfngRixU+OEOepOEr+
	PP0o53BMiLpsWeoqV+8IOCiQ1MJiHbZMpyNGUc6X4JMqWhikr05G77/EgWmNCAjY2E+
	JtZRawWEwP8UVs7jWjQk7wAFyVdo9lAQv3IaWX+g=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659146452;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=8TKIdpQyTMLjSQW2BCgJ2UrwV720qQSAFdng9WEbw0I=;
	b=fnhaxCwXtbe6zDuMTtjG0ouDnA2kvr/tuYUnmAScRDRxkgxwDIIwvbQ5xku4IO5H
	fEH6ww3vq9Dz0Lnb+YBA8SucNnrfkdgZmha7n739DZ96u3+LCtpnpnxYxFn7evZzxcw
	yMwFw7E+zkjxWca73vzF6JDKMuH/sVvUaNLhHiO0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101824cd5becc-c429eccf-053f-4026-8e34-dca9033e586d-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 7c89e294088aae4aae48888c9e0dff4b2a318170f4d89954f6872de6ecb814d8
Date: Sat, 30 Jul 2022 02:00:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.30-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659146452
