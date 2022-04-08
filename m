Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F163D362
	for <ddprobe@lists.linux.dev>; Fri,  8 Apr 2022 07:55:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1649404558;
	h=To:Subject:From:Message-Id:Date;
	bh=TKrYoVhFSHWIBalGgkvClVZLHfZaHjYHTQzRACz/Oyo=;
	b=Ti7PvoGwqPNdsg3RhVUI5MbfQE1Uvt8jmsbgvoRBYxWYxWdfgZZlFetVUqgXlrY3
	rNDoi0IZ9vsSyqUsm6vsw9su3Ft6YVKpGvvPdEZ+u9W7TPr308ltE5jhCr45RBw0lpY
	GEjj3JFHV2s165oZDXmvmom9QDQ23W+99rkBBhPg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1649404558;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=TKrYoVhFSHWIBalGgkvClVZLHfZaHjYHTQzRACz/Oyo=;
	b=c/LAOWBs2CxowUwptE+HJ8O/jbnd8QglT/Us0e8f4niJtJFGkJNohFWpgDYW/FaO
	wv0sU+dzekRj+uoJaz51kotdRBzQMqjRA2oy9lVsf+KJng/UPbHeNYrEGI/zBwOnX0T
	Fyc6YlbUxhzfKr37ttGi6LdxULiruRZOzRy/kqSM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180082c3bac-26ac669c-06f8-4369-8a0e-881fd10452a1-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 38fd561b6552bd4a9ad6c63306a8a85b10dab74d73b54d8eebe845c23a954694
Date: Fri, 8 Apr 2022 07:55:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.08-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1649404558
