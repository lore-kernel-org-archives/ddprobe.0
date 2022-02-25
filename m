Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 882E77A
	for <ddprobe@lists.linux.dev>; Fri, 25 Feb 2022 09:51:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645782685;
	h=To:Subject:From:Message-Id:Date;
	bh=ipixoXS9Dk7JkQGciw9oWx+TbxziF6cJWNhcCBW/5R0=;
	b=bbmlPoQ3m/m0ZsoYNZSgXfrgjYBfhMLV4BhJ6c9Szeph1KOmzO5key4GnHDxzqJp
	yZ1ptLsxXezy46mkwGs1Z5G4TVQNtL95b2irAmL+3/oEwckSBdIICiinjrSlYW7bi4A
	w1/6PgrYXCqErZ3aPZvaVwfMBDDHdgOJZLYFr0xY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645782685;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=ipixoXS9Dk7JkQGciw9oWx+TbxziF6cJWNhcCBW/5R0=;
	b=fKEvzYZeLDwTRAkbGMvGU7lt4lznv1TPHccze/nCYLB11O3WfqhHG5Ulg1HPUOdM
	yMG+Yy10WK0DWwnw5u3JiGm+u8Y5P0bmDm7DsaXJq8FPBnBzUQf8iSGjmTQ1AEIgOgt
	J55cFF6pw+Te/r4jELt+x0NUrEIMw+0f9GsmSTlg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f304ad458-2fc5bcce-0a64-4b7a-999d-061e616abf08-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: d73fc7168f6197d4efd4e2e03f9cc3497f55d8168b053fb26899fab08980ca63
Date: Fri, 25 Feb 2022 09:51:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.25-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645782684
