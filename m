Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8FB5FA50
	for <ddprobe@lists.linux.dev>; Tue, 22 Mar 2022 20:46:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647981985;
	h=To:Subject:From:Message-Id:Date;
	bh=MgYizUKjZ1M7NWTlMg8a7cuAlDzNPgWXZfSpJw73+kA=;
	b=icl+iGAXC3kBYId/gmXCXckxyU+ZuK/vf22pU5hcyN+i83tEC96H+4tvvRKrmz2a
	L7oeTAv7f2a6+yCQS063OkaN4bxgjx8g/WurEZkM7YJD+ToFPouyUJWzyuEZ0dMSnxN
	f8FctYHQtDTm3hQOqPMT1ASe6SRw6o2xyOp+8SgI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647981985;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=MgYizUKjZ1M7NWTlMg8a7cuAlDzNPgWXZfSpJw73+kA=;
	b=gQT9c3V4EDS8SlPuQ3jY4rx8PfRDPbgsdqqDuwKz2NCC9UuRuJxcD/h1QyfUJt+2
	kB+fFj7Tv5F8k6Lu05hO1V2bFqabjRKqQpZzINl5sZ5Ma7uOHrvcKTYZxSXG6OUw+rv
	TX8t9UsNZjfQSuVwjqlV/LzeGbzCKDR7KeqdJVgQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fb3617c07-4764453b-870a-4436-98f7-af614160f567-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: c305e879a31c0ca2eb0d91fcf901964e63224222d28bc4184960d9eaf0fc3e5e
Date: Tue, 22 Mar 2022 20:46:25 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.22-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647981984
