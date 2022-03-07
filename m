Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9EDFA1FB7
	for <ddprobe@lists.linux.dev>; Mon,  7 Mar 2022 02:56:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646621785;
	h=To:Subject:From:Message-Id:Date;
	bh=GK90ewvKoIY0T/i+LDrt7DgTNQiCGs/MDIru+8K3KsA=;
	b=IpnrORk40+d/Whu12iWMVG0IN21EiiMMGLB4se1LDBfw5ZpwThoaxjBNzpcdUYmR
	hMFsMjhE7PjpLy5BlnYo0URhEVI3eo89WEqG7yGbgc1OFDG7GFGZnpXOKviWgtVkzxE
	x038PCvmbzN4jARkaWmQhyupeQZJ/p+pdhZ3tAII=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646621785;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=GK90ewvKoIY0T/i+LDrt7DgTNQiCGs/MDIru+8K3KsA=;
	b=SEwCtdF0sYZ52vY599rjFJoAQC5/4g+eGUH8madjrejPwvE9D7IkdP2Ga8CEHSx8
	F6Bz6hM4awsI81BZJ22tBy20Kuts6W46H0hhi0GyCxBlngrPGgo96hXiHbOUiHOOsrG
	0UZ+L+RbJyFPuTKlZzGQ7fZnM5iXCRs7k2LhPZXc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f624e7a96-1841fc25-2bc3-46d2-b292-133430fec1f0-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: eede48588fbb2619b66f58bf2f90f225d80e68b333e96752001c3b5f2d4dc9ad
Date: Mon, 7 Mar 2022 02:56:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.07-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646621784
