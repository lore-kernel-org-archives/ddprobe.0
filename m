Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6D5ED2F31
	for <ddprobe@lists.linux.dev>; Thu, 17 Mar 2022 16:56:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647536184;
	h=To:Subject:From:Message-Id:Date;
	bh=+hXzSy3v8PIPx0uBUWZ8yNxRGKoUkXxPsfVF+02PClc=;
	b=d8B8oQ10TnQxZeoK+C8kkJ/8dKdaCngs1XPAjVnxj5nqFWm6RkCwvRg0TO00Fqns
	fMopHcKDyllnuwB/bVBf8WMv4xxB0k/6BcDvh/rtAU5LxGXngIQKe/Ah3Ab+fHs3Ygm
	s3XGRMUE/clmOjPfYEymt0YGQOXWNMNf/Y0/Ky3Y=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647536184;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=+hXzSy3v8PIPx0uBUWZ8yNxRGKoUkXxPsfVF+02PClc=;
	b=aIo8+OeTBroGR03f/tZqFJevZKRJ7l7SiQzx5jmtttoeWhJ9gQxuJD2X/WcqBJ1y
	2gRDayH+PKzmnbYcOhtZzO0t5H19HMXKfirX7py0fHQUEBX6sOognBdW2Afe94aEepC
	nBWWXgyOI227Gt53RR73SDk6Y4mhJjKfkFWPPkS0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f98cf1d9b-10a7450a-6642-4a3b-9bd8-f8ada7a1a520-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 4a66774b823e6d164f29291c1df3b87bca57989ce2027cf53705248f42637685
Date: Thu, 17 Mar 2022 16:56:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.17-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647536184
