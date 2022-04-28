Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D3461361
	for <ddprobe@lists.linux.dev>; Thu, 28 Apr 2022 16:15:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651162558;
	h=To:Subject:From:Message-Id:Date;
	bh=ccZlD8yxygbs65USEI8ocGoyZwW23IZGTD9Jg3hdfz4=;
	b=jm54sanKlyJOJZtZ/oCyuSU33xuYS6Y1R3V3WkEyjN+kInJT6L/m2mmx5vj+XbHg
	dueb5ngzsWc8yKqL2SWkwoK/XtfgZhT9Ng+gLh2FVoD3jn5FbWg2ZdVozFwUntZztOV
	3GpGJpdBtR0d3gAKjanM9HziAJo2/DeLjoXgxtRY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651162558;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=ccZlD8yxygbs65USEI8ocGoyZwW23IZGTD9Jg3hdfz4=;
	b=VCBSu/1WRVrDJv6Gj+thQDjygII5XKfyF4FaR6pD5zTat0LpZ5uqgE8QuYxOR82M
	bD74TKZzukG+5XbVbVz0bBnTPOAlaphZ7AXVPBwelnjtX+BUI3ayrSaS9t6U5GVjBIG
	PG+5mUFt6uGImGycyZM6QtUj6QNjFxp4BqaP/zes=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018070f52f45-522b00e2-d9b5-45cc-a2b9-cd0f9d7db19b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: dc991d57e6a53fb4c16f450a0f7c5fc75657bd1048117dba6a53247100bb57d7
Date: Thu, 28 Apr 2022 16:15:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.28-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651162558
