Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DB7934281
	for <ddprobe@lists.linux.dev>; Thu,  3 Mar 2022 21:56:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646344585;
	h=To:Subject:From:Message-Id:Date;
	bh=cbOhJmpYvNJtZNQj4YBk+olwaW7068lNkhf/cCEQCGg=;
	b=mwozPNNmk4N95ublyTZ2o/tqJNcr7DX0JbJzCdN9jTLMnBDP5hPQ7KJehn96KeqL
	SwamnSrDeWVKgwj17r7MA4C94Rs4lDrSFtDH9AVvSkTEgLIH2CdRvZ0IxZ1lthEgB2j
	AgnsXMopv68ECw9TpJUY4jAnGeOTbNgJ2/sVZGS8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646344585;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=cbOhJmpYvNJtZNQj4YBk+olwaW7068lNkhf/cCEQCGg=;
	b=XBDBDoq0kTPvuGwnruXXiSuqQ355SCfvmSpM4FLrStbn24ukTpzAe8J+rmd/0VUJ
	LgBSvry0sdObf0GgAlP+IJzgaWgfOt0FzsQiCq1geen+kxQKBJpatsyga7WScGvy2wI
	2YkGiUwuvUVmJien/tGuuPe/Kw5UelOpNgveoz9Q=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f51c8be7b-17747f27-95b0-4ce5-91d2-248cca8a7b4a-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a8e7956a64ff438614414107424164ebd3dd17f42f59df42e526436f8dc31f0b
Date: Thu, 3 Mar 2022 21:56:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.03-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646344584
