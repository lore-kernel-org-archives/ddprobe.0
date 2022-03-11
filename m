Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 82C74258E
	for <ddprobe@lists.linux.dev>; Fri, 11 Mar 2022 23:01:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647039684;
	h=To:Subject:From:Message-Id:Date;
	bh=CRIT8Tw84bcypSA98+59ZyxlANqdIlo8pxpwwp+CD4c=;
	b=MkMSHZRhnQCJjT270Rzi5yYUShYBu+JsfFWS9qq9ieKDEVzhDVqXXMsJ7gwt4u3s
	kEWzmNoHDAq6KptHfCgHXBZ+deifcG+ZZ6gIr8EX4w1sFaPqP4z8aq8pr/CQ01YbrdT
	4O4m6Vvzsya8ipMQlGiaPxK+2GVF3+MP8/uXMZ6s=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1647039684;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=CRIT8Tw84bcypSA98+59ZyxlANqdIlo8pxpwwp+CD4c=;
	b=EmVPPV51ur+vIrQWhf9P48sPBUfNpLo6Bt+fOO/Y3RDmZlVi2p5Z65oejTg3hk5d
	JkAk42x5aOoNVIDWQgSp/uqSpRoeWlN+0Fej01yZpyDSxhltZ9c5x2dJYkuwdr9wqzf
	ydEpnIzcEEcOYW6bQV585PNUIcvbcf3VDX0/NE+I=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f7b37205d-a54bcecf-56fa-4d5a-b6b1-a0ab1f088707-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ea84194fbc809526a46d517ba0fd738bff8457dd1fd4a8b9f70a87de72416fa9
Date: Fri, 11 Mar 2022 23:01:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.11-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647039684
