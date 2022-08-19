Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 729E47B
	for <ddprobe@lists.linux.dev>; Fri, 19 Aug 2022 05:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660887052;
	h=To:Subject:From:Message-Id:Date;
	bh=bjWooLiIrgdVDp/E30bQ6FuBfxBASappvGIKQSGIfhk=;
	b=FkLlBCmGnithxK92Fk+JeUsL59mPZVJ4/qIZw1b48vJAUBkWeWoz138Xl0Z4Q/Al
	vJEvMYrOMuXAw9byZywY33eUCSV1b+vg8jepdud/r05ZS+f0js9jHaz+Jnc7pj7XMuI
	DNMWIYQm/YvNoEbwjmpLFvyn/1i1OSDCxvjAX4YA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660887052;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=bjWooLiIrgdVDp/E30bQ6FuBfxBASappvGIKQSGIfhk=;
	b=RU7uZXuiXDmZoMObfnYgIcqLw/yujSWcywe41iszOjEBh2a7rAFSWhUxqw4glrOB
	Oe+L5Nd1U6j870vV9VCIWcKmCZAywxKJxZ2DDsZMyhm0Hczzf3EjWHKANSIT2D4yOnM
	GzWkB2UF0l5GLEGbraQf3vHaUFGRf+Du+7the4+o=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182b4953134-fe3695fe-7d2f-46f1-aacb-d618bbc9bbd8-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 78da3b98832514e00690f44f5711e9f6910c51025f5e8a6d6a42221db208b238
Date: Fri, 19 Aug 2022 05:30:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.19-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660887052
