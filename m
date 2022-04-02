Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 159A17A
	for <ddprobe@lists.linux.dev>; Sat,  2 Apr 2022 23:43:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648943038;
	h=To:Subject:From:Message-Id:Date;
	bh=ExpKBr9fxNJz+Pgmch4rArDvh6pTUoVZDnX9lN5HQc0=;
	b=OKTyT2HcVLETQ5NT9nHfgupQFy8igElTrUZZPrkupMjWLAeYcROXNzctsz1O0R0y
	TuJfPkgkv2ozGdIyBGLeLvcSBf9ncxRgR4kYSIHuX0cKNEJoPoeN7Iuim0IhBR+JKb0
	yC0dVqF8SKk8zSHjqyluGDzIFa2BUPOsNRV+qFgk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648943038;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=ExpKBr9fxNJz+Pgmch4rArDvh6pTUoVZDnX9lN5HQc0=;
	b=NilXkOvWMdm0lbyNjzN5QU0KP+w4OtNGB7eB+kbTZXz5amrqnBrtiG9x/jzg0gJC
	QXJpyyFSorznLw8hjxu1x1LAwo4o9BvA3+NdudYxmlcAPEJr2+vvynswHFE0RZAROCm
	uZnwzDc0GLzQdIhPgtm8m7s5K/HH2RYfIHd+vJXM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017feca9ff7e-3bca5616-11de-4644-954b-0fd2f9f1081f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a8aa3085981eb8c278198637feac60c25af30977244832c485a20a3a753c6c37
Date: Sat, 2 Apr 2022 23:43:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.02-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648943038
