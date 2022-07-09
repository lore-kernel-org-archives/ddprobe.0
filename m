Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21AA2A4F
	for <ddprobe@lists.linux.dev>; Sat,  9 Jul 2022 07:26:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657351612;
	h=To:Subject:From:Message-Id:Date;
	bh=yWrBuIohm7ao2Q7+BmKCdpRbJfV4ddf7mA+atsUsGL0=;
	b=ktSGsrYgipteJ0DzLZsgI5+cultNg6hExmj74sR0eCEAYM9hK5LHdfjvXBROCLc6
	7QnuugXdJRmDJXsbfUR7kLTXJeOkIZNf5UNu0XoEU8SGp2CYWd2Qipjm4sHi/s46pIX
	vEvIlZFMakGd/jCCthIcJtS+j0qjGgRjpy6xwpOs=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657351612;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=yWrBuIohm7ao2Q7+BmKCdpRbJfV4ddf7mA+atsUsGL0=;
	b=g4Dj89NhK6pZgQkyAUre9m2b+dEmRl+ZcFwe4+lrTKxWNQmRz3ox1s2/T+hfqjAD
	W+EKMqNU6oWCrRrN2ff9/LhhpbBhp+eiLA4hFv0MxvppstBAvoYZ5WGJKPhmfpwIGKY
	Xx/1LA8bQb+YVbg5bS+RpuN3ZA0klSQqqYCUJ9VY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181e1daa7ef-707b17fc-5091-4d05-bf0d-c7ad4101c1cd-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 163f346ecbd198702a7081e9c9f21f8e7eeae8d54acbb7165c2eef89d3a45c17
Date: Sat, 9 Jul 2022 07:26:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.09-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657351612
