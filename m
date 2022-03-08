Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9841C48BE
	for <ddprobe@lists.linux.dev>; Tue,  8 Mar 2022 12:01:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646740884;
	h=To:Subject:From:Message-Id:Date;
	bh=lkAnnWwYHBZ5afdQQk0ykbD7zzJUJik5SAd1NaJ6VFk=;
	b=UlBWt9PRjzj1ws1TFRMUsIhNOHFYefNpV2rnRcX63YV7LpipdqVpPrZdXxLEHDxt
	NbS9boFfa9QD7dLk7hieYFZKeC/lfLXQDn2g2M4v/CjakLeWAxgVV3gDxKk7JsIOZ35
	/G7jRoPhB/0erdrpveNFwmnSjefrp4PrtJLgJovo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646740884;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=lkAnnWwYHBZ5afdQQk0ykbD7zzJUJik5SAd1NaJ6VFk=;
	b=G1cgLz/WfeVgQr3/Zptb0IxNWwUgLwUAMGJaPkPFB1YBozZmj67jj6qHi+gf9fs1
	wGmwR1nNJXzKMfvtkf1+ApL1ObIcs1M3XctTlK1pdXFJBYTYQ/coyBE5acHbG1dV3em
	z/2+H9tLh2eQz1yO+uVG8o29I43T9Ax1G5UasKWA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f6967ccf2-f2613386-71f9-4b20-9871-3efe89e51c1a-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 2b8fb6981175c5cf0be39e48f3707129fbe2d4508a1a42045292e05e89002013
Date: Tue, 8 Mar 2022 12:01:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.08-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646740884
