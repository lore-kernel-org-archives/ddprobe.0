Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 396AD7F
	for <ddprobe@lists.linux.dev>; Tue,  3 May 2022 10:18:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651573138;
	h=To:Subject:From:Message-Id:Date;
	bh=9PJvijVTgD61SXSq9Ha9Qs4GdmJr8nLN7Cq3vA25EJk=;
	b=Gqt9efE3GAo9FS5gWEt+nOjNAD8i+dqF1jerUUV4YhaYKjvEQRVr9jofE/+FJBeZ
	Gj1Vwn3iE+I+4jgf0yIMoNTBqIwsc0n32JDQ60DGbqHOMvNX10sK4S4qMhEYjxLtaYU
	P6hDidWKNnraY5t26+Lbj6x5HNNN8SFf47bXfXO4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651573138;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=9PJvijVTgD61SXSq9Ha9Qs4GdmJr8nLN7Cq3vA25EJk=;
	b=J1M4gwv3/tOC9kW1HaX1R5P79c9KGUyFKpwpk7nPCyBOt/6z96CAKax0i7LHwTlt
	8dFt5Eaihi5rZ6h+1EmAd/E9ZHBBFlKEBkOMXIW7XkkdsFPAmFnOpV7bO8VPmeBElH6
	cXbohwzm6ncOz02BNDzayECyX6cmNwWpAQ/BQacA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180896e2335-0d634fba-05a5-4da9-9867-73a3366cd350-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 24ae10d9b7418d32ab4c29cec958db872149d23a283269a90d98393e1a603fe5
Date: Tue, 3 May 2022 10:18:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.03-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651573138
