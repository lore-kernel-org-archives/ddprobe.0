Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 644577B
	for <ddprobe@lists.linux.dev>; Fri, 15 Apr 2022 09:51:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650016318;
	h=To:Subject:From:Message-Id:Date;
	bh=NIU31gmMgm6sFWjj+45BRLbVJA9MwrQ8qbE82ETk1g4=;
	b=GUANtrrapc4g+t2aS+8SrHE6sHzlgCnHAmsKBZQNsJiDu4iDYd2pewRKK3MwJjna
	skefmO4ESSrJchYITZIHnFng4yFYYwXRMoBVquVJ8XQ/PtP/t+3zaaDAy3/zGpQFgOG
	Y1A8g8p5gvDKpl7AeKkOzy/sbipL/4bKoeZpI22Q=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650016318;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=NIU31gmMgm6sFWjj+45BRLbVJA9MwrQ8qbE82ETk1g4=;
	b=Qj6iXaFM9fr3sy2h7Wh7cj+V9IPGz+cDWhMopdo0M9dHFchNgDMGLw9ySEjBEaO4
	DjYwWrZV6X1cc3QYF1wgP7RfVFS08q9VAb/A/Nl6E1KDY6/K/+f0TJbaGeoeYbrBKKN
	06/XKvJyE/oy3AAdGWa/jsctBhapeEvbNsly3l5s=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101802ca2f335-618f1962-6557-4cac-b6bf-2873b85f5fc8-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 7ab1737b1b17670e57701eb74b22aff355db421873e4537c7be3588352aa410e
Date: Fri, 15 Apr 2022 09:51:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.15-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650016318
