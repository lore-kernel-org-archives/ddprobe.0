Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 87CC17A
	for <ddprobe@lists.linux.dev>; Thu, 24 Feb 2022 15:01:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645714885;
	h=To:Subject:From:Message-Id:Date;
	bh=znE/oxjzS7dLk1I3Ej0CSgZ/WWBXZaZD3CVtvFMQhSM=;
	b=bGvaPd9k4T1MUaOZwEjJQtOhYiOemGjdeCdn2KOSQNtGnlrtTUsjiS0eSHC5HDIs
	dquOs21r6R49f3v174wjtOokyKNNsLAFxzNgBJS32yvL0kYDET11HA2qV3aj4SemcvH
	BqiO+JPRw3qsNOrb+WdyHSxGb/h4/EK5OKcC//EQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645714885;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=znE/oxjzS7dLk1I3Ej0CSgZ/WWBXZaZD3CVtvFMQhSM=;
	b=DEzRP3K23JlIk1OEAFAj0yPjQ1XGCO+1Bx4nq7+9cpVWsWyov5r/oaC5smAGgcz7
	Ik8sIDqVDs7H35lHc5HYJOTsxwFDw4Tx1O2/mS31vh0F+J0n2WO6ToFrIyM39IWsdv2
	4sa7npuQHxoOfVCQmL3XwTY7lA/aDsXEzHoBUNHk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f2c4048c0-46b6c20e-d3a7-4808-8d0f-40514bcd48e8-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 018bf1a58214ea3e59afafed43c7d9d1945293ec230b455f736284fc6c98dd67
Date: Thu, 24 Feb 2022 15:01:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.24-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645714884
