Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4256D7B
	for <ddprobe@lists.linux.dev>; Mon,  9 May 2022 20:19:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1652127598;
	h=To:Subject:From:Message-Id:Date;
	bh=W2CJykf7+3/CR7OX663CVYGZqhglMfRRaAADk6AO5+Q=;
	b=j2Ijs1Hi9OAVEIqAi2oqOa81VQjZdKfR9nNjH5cX284bgMlf+TJR1oZLQkuZsL8m
	GePQeT3BHwvvCycNxeSOuL7C+ikKVQm5crykrqQMYxKrxW/vpE6vmM+OLaBswQPRmOo
	dkLpzVZpFFv5oBOYCv2qprkLL9wHhjbg3jKxugas=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652127598;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=W2CJykf7+3/CR7OX663CVYGZqhglMfRRaAADk6AO5+Q=;
	b=d2SBvmkcvOPiX18J7JxQ8FNAWk1zXZ7XAN1+b0q1p70ZC5cbWKRlJeGkxbVvz0Tv
	PkVnWrng3n4Z5X35IUUopM7uAuWvEgE/DBMhbWEDqNhjm39pimIelQ3O+38W/uTS12T
	2Di8IWLd4AIyOmuiLMzlblBO2M/F8ggnslZ8l3Yg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180aa7a8741-b2513a5a-ea37-49f0-99f5-c3c56bd9d0be-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 516807981e0eb69dcd610ac9d0fda50b0e4a9749227acbdd5d92c39c05b8349c
Date: Mon, 9 May 2022 20:19:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.09-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652127598
