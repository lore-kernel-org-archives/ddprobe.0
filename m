Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5A05123AB
	for <ddprobe@lists.linux.dev>; Sun,  6 Mar 2022 15:51:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646581884;
	h=To:Subject:From:Message-Id:Date;
	bh=ZPVAitroFkXgOQ9JmroOh7d0ZENYme3sVHjR7HbXv7Y=;
	b=QhHfeiAm47LRfmD72FDEP+SOgQNrw4Q2L23n9WnZJ38f7mocpIml4s9rFM0Cazrj
	PRDZWAIDzNLMfQlBtwfZOwLJUh+/koFduDUBjKWxVMa5QtpLBCQEU7QlgUthyjhJuGp
	uxVs9VTzafpwVfBh/BpwfDaVsW1ZWIn/FICoFxUY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646581884;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=ZPVAitroFkXgOQ9JmroOh7d0ZENYme3sVHjR7HbXv7Y=;
	b=JgphsvCyw8VOfudLR7AlcTdgwjokNu6Fx4Ug78relsqQDMIuNlMxaS8DkXSVXqyp
	4eHP4oaE+V5c+YdK6Ng1gG3Uld5KHn4Ux8wJ8IDk6VuR7rHH/bL+rFb2tqmjvuwkR1C
	as6CuQL2fLX2uM4cM8XcCVOmJHjeCJev0a+63whI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f5feda734-f3a7e1fa-39ad-483d-86da-94143e032ec2-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ed1cf7298b06c6c38422146dd93d04abe541126bdee7288b5dc295ada44c0732
Date: Sun, 6 Mar 2022 15:51:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.06-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646581884
