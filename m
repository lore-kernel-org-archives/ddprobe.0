Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9DED37E
	for <ddprobe@lists.linux.dev>; Sat,  5 Mar 2022 03:16:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646450185;
	h=To:Subject:From:Message-Id:Date;
	bh=EF3m1Y+Guz53XdZmShSUIeWlyYmLSELe3yXYa5PK2zU=;
	b=mpqKH0LQU9iQ6PktkSfjNXtcAKO7RCHRGxxu54u6u8em1kql/atT2xeEBN0QwdSk
	KcX7TQhusy4RQUdfY28/hNdS67qj+uK6QbnBNxE8F7W4fGRbxBPRKqCqQ6iXqBfEauo
	JeoWknFYfNgKnNDyEGKlR5X0sPR2b1owHsE2rI2g=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646450185;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=EF3m1Y+Guz53XdZmShSUIeWlyYmLSELe3yXYa5PK2zU=;
	b=YuFcXPUz/GZDVCBBrbt62RPmEmrQHv47e+VS8qIvPuNMLHUgssCVgcMPx5+7aHf1
	FLL8Egj9bX0CWWy7ikwQqLzgaSGMeo7cBNXxJrEXrplQmxFgfsyzuUSPjiQGU0st8br
	O5I3tbI+soA+3xs4+6/cj2jxBDeQYxm3WqAnzKIY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f58141269-f043e6b2-eada-447f-9c99-e13f9faf57ff-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 5b0892af26289bc15286251e1b810051b703ab540fc1c53976a18eb7ff0328f2
Date: Sat, 5 Mar 2022 03:16:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.05-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646450184
