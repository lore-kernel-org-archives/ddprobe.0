Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9A37B20E7
	for <ddprobe@lists.linux.dev>; Sat, 20 Aug 2022 04:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660971053;
	h=To:Subject:From:Message-Id:Date;
	bh=6UuH+bbcjSHP1u4oP5Q20zTsfAewbZgtusW9cLK+8yk=;
	b=VWaj+9siJr92CrwxQwauDbdRq6FnemMPKBoGX+fk/2yzFZQ444jprk2WfycnRDW0
	kyf2VzKhJYEhahSuRqqscoKDgo2hcx9WtaqJPK9J4pmCreiu5G3p6Pk2QlIW8YpWUGq
	WDq8DBe2JVQwnHRJls3WxPGdyt6VbS5ctgJK4ZKU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660971053;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=6UuH+bbcjSHP1u4oP5Q20zTsfAewbZgtusW9cLK+8yk=;
	b=BD4bRFyJBANnvIbQ3pxA/D7aHD+tKbNrC29XkJyDziKTZdN8nuFizA1aiUvtVaqU
	3FX7AXDCVrWV7vxyU889NFIU+5DLsX6nvIXoKc7DI9DSGixPI+ajfnAASiYA+1PIMy5
	aSUFQNZbgidy8kpzOLHe30dSlyX53lwl+35LicgE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182b996ee09-b84f2991-acab-422c-9cf7-ad646c0acaf8-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: cac628364fd3cd22badb7d575a9c27e0654343c308b685f1db19bc0be65385d9
Date: Sat, 20 Aug 2022 04:50:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.20-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660971052
