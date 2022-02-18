Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6990D48A3
	for <ddprobe@lists.linux.dev>; Fri, 18 Feb 2022 10:46:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645181184;
	h=To:Subject:From:Message-Id:Date;
	bh=u/vuoPuaCN4Nxz50l6oHvpWoOuUoriKJBYg/B3zFox4=;
	b=f8JV9LvQtU50ea7y0HNqWPC9K0rrZpYgTml+TKkGWBTZyqJlPRpRz4wDnSiFQcfO
	fbMQnT9TE7zX1vnRDmIAgmT3dZS+Bwqj7JQ4iVnTRgEBCr1b1bcnuFlD0FwOiu9D7j3
	/Dw8tKCwWqCCYzLJOx+1S61s3Frc7sflqGTp6kg4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645181184;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=u/vuoPuaCN4Nxz50l6oHvpWoOuUoriKJBYg/B3zFox4=;
	b=BE6IGegtnS2yRZH/+/cxVXEMS0oGg/u9cf76ee4oXwFngyvWf6JdfBvNo99TL43T
	tEX+b/QxXWXkzS5IWz5SlGggyUpdZYqUr8weAEzt9POihsrSgNGslybF0YGUKt5lkSX
	427M7VE2dHxLvdGdaDxUCROpjJh/ucI07aPt+StQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f0c70aae7-550ff052-19ac-4a24-a2b0-0a0b50346b04-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 4c8eeae1f92540ab86e7c473f069f69c1dade1cb275f0778890cf5c53224b37e
Date: Fri, 18 Feb 2022 10:46:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.18-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645181184
