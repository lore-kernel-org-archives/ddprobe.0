Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6BA0B1B61
	for <ddprobe@lists.linux.dev>; Tue, 15 Mar 2022 06:26:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647325584;
	h=To:Subject:From:Message-Id:Date;
	bh=YcojeixFjGvQPdfM7o5W5rQTsf0qBFNBMLaX9jZ900k=;
	b=QOVuJGOtqOwn8oMYAEqGqz2QpTQzEJyGimooD6jfnD/vmy+FD+veHV2c0TDgRFzc
	ffjdvgxWDWVNFmWc1TGSK4zujnxgTedKYxhY3KVr3iSPlUGwjlK7Rjpd74QxMNkDdAl
	GVYDGZpIk/4lji/oWOfDPLsyNneOnMyQCwjKVh2k=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647325584;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=YcojeixFjGvQPdfM7o5W5rQTsf0qBFNBMLaX9jZ900k=;
	b=Uqi6QcEOGCl8wuQk4t+2tmH3uU1wue8vj8UUenhI9M2HbmHu8s31VdgVaPsYpQ+Q
	N5f3oHAkJfdf9akgI0kb7/wfKxenJB5odwTdzm01zeHfdfN5Xn4JtGZ998/it9T9JF/
	stCFsx79h6QkvxiU+DvRs3x0aOC5geSJQqSlFbsA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f8c419d5f-3278032f-dfa2-4575-9185-5f822ef55354-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 5cb805051ea254f4beab0a63074939f24d52f9d08ea0cd072ae7066e841143fa
Date: Tue, 15 Mar 2022 06:26:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.15-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647325584
