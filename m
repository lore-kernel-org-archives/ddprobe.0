Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D5D421385
	for <ddprobe@lists.linux.dev>; Tue, 19 Apr 2022 19:08:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650395338;
	h=To:Subject:From:Message-Id:Date;
	bh=BjVF6fk3Nxgo9IKqug9k1lxae1RmFMAPSisZv+DCByQ=;
	b=CZJ0xsAdJGYm+QsB6U6g/cxxFthtBXh3SyEFpwjUHLMLoq0MHLw8MCX19BBH6sP4
	B5HiCEnlqit55Aofvu0MKzT3zHObBoG6npVxy79Aihz0ZnrXzru6Z7niDeTBMFkVH4t
	thEvl/fQPy2uWusP8vfFnf3Vu1qCOj+vRngYkcVk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650395338;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=BjVF6fk3Nxgo9IKqug9k1lxae1RmFMAPSisZv+DCByQ=;
	b=hqZu69I3wcf0UrSL7YcCAZI4FpjMvS1dBtiX+L5cy/xJGqJU2JOsMWe56+oR5UCS
	3hKIYY9XP3mK2b4kVKCbh6F+32mgAD/z+6zX5xQadePYGW1MhDujwuNMzKNJcCbA9Ag
	2Xa1pcKhWZPGzbDcAXHNvspCQT2nz3X1TviEt+wY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180433a5620-8f693c6f-8245-4194-866a-45a61ffc906e-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 0d78af03a05c2f5a1e5c9c4c8bc9dae4b5be8fc1ca5d806f03c1a2b24833ccb2
Date: Tue, 19 Apr 2022 19:08:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.19-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650395338
