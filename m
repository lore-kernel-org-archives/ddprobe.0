Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A927F5115
	for <ddprobe@lists.linux.dev>; Fri, 18 Mar 2022 19:51:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647633084;
	h=To:Subject:From:Message-Id:Date;
	bh=k17Sa9Z/Y8S2IMxH7affyinEBTOs7aggfq1rY9t+YZM=;
	b=lXjyQzixBhprInz11MEXY5o/rdw6IWmbxAdWwzMiMcnzWBgNuv8sUcW/zlVDgroF
	PS4NLsuQ55/cSNeLgIM+KX1c2UTk2wnIsf3zrJR5DMycFnR6icJJyL0Nc+vskSii9Ou
	iJnXjwAwkXoP57R3pir/z/1tjhMDvZYnQh38DzD8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647633084;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=k17Sa9Z/Y8S2IMxH7affyinEBTOs7aggfq1rY9t+YZM=;
	b=EgDlkRoK7uhTftJGE+uzPW4MvheMO1+z+9VH9ubpvCoCuKmmeKL2yui+xY8+j8hl
	ZsESSpE+3ePI7q+Zp7BLiJlwnOhMOZjRgSnkdaKsMRr0k01+0p82uz9qtrWeOYL6kOk
	zt53M2cPWyWXEc8KeZXyBrwmjJ5OQRwXeHGFpCVo=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f9e95b15a-0c75c0ad-b657-471e-b0af-eb8519ed6a05-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 316aa3819af07d661f85e7f89cd6ca0a878a0ff94cd7b9cde3408dd80d7c42a6
Date: Fri, 18 Mar 2022 19:51:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.18-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647633084
