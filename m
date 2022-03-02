Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CB4077C
	for <ddprobe@lists.linux.dev>; Wed,  2 Mar 2022 11:26:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646220384;
	h=To:Subject:From:Message-Id:Date;
	bh=Bhh4wztM9YkWW/0cZVtuMQggtXWCobyHLEENTGWhOrY=;
	b=CZAAqAgtOERX4OiGqjtfUenfSDVyHUpVmmxQR5nRxSN8HCzK2YUa6VB471wBy82t
	cneA6a8ldZkb7vIP1O6zlXUfp2DJrJkMQ73Sx1C+1yB3OQlyy/eqDMqzJBBxylPZdrq
	74QeSURUWh5nv48HcvBdKixoRNjDEJpUDdFOdOpk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646220384;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Bhh4wztM9YkWW/0cZVtuMQggtXWCobyHLEENTGWhOrY=;
	b=DoqKQ5ZnU6IMOho3t5ydVC5u5ks1sIad3yXXJwBLwbZv9bRudiPyZY56l0RzkBo8
	9G/mx4dEATUZFTLcZw6XMOWLl7C8NAkAEbNlDFQldiojCwe+TffmZ3P1nJZF0huKq9x
	IlEaTgS45avSOfMH72LEOTHEMI1JLUHcI3pYT3bo=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f4a619a37-1ddeb012-f3b6-4654-952a-df60c39a7749-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 64cb2cfeea39f765504efc764f04dc3145f30989d7568616af154473c3ce3328
Date: Wed, 2 Mar 2022 11:26:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.02-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646220384
