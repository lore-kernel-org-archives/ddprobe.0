Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B60D1460E
	for <ddprobe@lists.linux.dev>; Fri, 18 Feb 2022 00:46:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645145185;
	h=To:Subject:From:Message-Id:Date;
	bh=WduVTGPY3nw1ZfCMm3YPTLpcJ6ozM5rFbqrXU0YeowI=;
	b=fU8CYnzzW13WZNk2bJY7SebN+l2kvHybKywK998O5IRjIE7xDjLrezB6LkhHO3Ek
	76Gucun5auqjSugAUlqg40Za38WWCbFLEaLj8S9W3gPRa1vyvR+D+Giy4/nZmlopgA8
	q5pX8Ar+R/kCGolp7Y0MN3+w4/wTDzsSeFRomZu0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645145185;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=WduVTGPY3nw1ZfCMm3YPTLpcJ6ozM5rFbqrXU0YeowI=;
	b=bvDMMFtQFafZDrYUJzsNsXtPAZVqZwvtISM3WcJmcpDgMDfEMiAtHo+Q20WkZsz9
	NsSYGOQ1QhsditUPa7um7IkJCjFWtJ9+ntGrhFYu7UT1p4885qyKxHaK/WzkXVCU1tu
	WSIwrSZ9cz7c6lA4sa/dnd8sPwQtg1JIsLGfLWgU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f0a4b59f8-fad1c46b-1846-4b2c-bf4c-c1a397360086-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a131472187700e91cb901ec72586cbe37f9ea13168852256c30b7d9a597c22e3
Date: Fri, 18 Feb 2022 00:46:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.18-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645145184
