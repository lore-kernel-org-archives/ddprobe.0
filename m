Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B4947B
	for <ddprobe@lists.linux.dev>; Fri, 15 Apr 2022 09:07:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650013678;
	h=To:Subject:From:Message-Id:Date;
	bh=iqL5OagmIW8kUgr5Q+FukHR5wQ99DOqak1CKa3Zfe/I=;
	b=Lb0vlM9ukUOFMdEr85Jk7a1vW3kqLG/hF9NUClsOZf0UmxWE2NLAaE77XJwx2dmf
	yw6Df5eTi1JfrPmaiEue4v+L2Wsx17lUOPL7k46UXOrlt//SkYmkU9ziBq/bdSryPZL
	OD5tECACJGQZt3FYxcKOBU9buHih1sXRRSvs/X64=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650013678;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=iqL5OagmIW8kUgr5Q+FukHR5wQ99DOqak1CKa3Zfe/I=;
	b=CgxfFr5db4VOHkeVPMuxT61VZHpJi++0GODQg3eMNMlFafz6xPVcDRVHymWmVo0+
	GVCOD6WRgxwzvcSAgKN86YEs1cYhFQ3RjxY+wgO8J+Pgh+J7j88UnEFLb/CC4gizZ/0
	GU+MZQq8V/1kwVJzhl0YIqTy/7voEarasDlCIiSE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101802c7aaae1-12c0a83b-cd79-4fa3-9ab1-d6c59dc30bce-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 96cd592de0678902068e3cd7410267ee578d746b489e2f7d9123a24202d75676
Date: Fri, 15 Apr 2022 09:07:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.15-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650013678
