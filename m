Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6EBB010EE
	for <ddprobe@lists.linux.dev>; Fri, 25 Feb 2022 03:51:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645761084;
	h=To:Subject:From:Message-Id:Date;
	bh=ev+q4kZDF7NHS2NxeSJ0zySNqnPSZccskIeqJpa/hLQ=;
	b=LIj5jW5/xOox+NnyUdza784OU1FbfkQoxhVF50eFDpBGfsf6yXwPlOo+fWmqIE78
	YCu24ee6uB2CS4eEbaGi/t21cxO333ggRnS1MRsOiqEKVzfVzRhBk2T6nqszp2CHUca
	LWV1FRB3K4KMUB0wUTBv2QeSQhRmb3VtTiEg3I2o=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645761084;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=ev+q4kZDF7NHS2NxeSJ0zySNqnPSZccskIeqJpa/hLQ=;
	b=aDQS/Ypy7zOV6EgapW+C3yXdd3u/mI3tXeg4ezaj0T0o2KbvXV0IzlZZ7tR3QX4b
	PTCza9PCgy7+xDklM3MA7yYr/vsOekbRqL/sc2Z4igVOeh0I2itvN3VgLmZ7CPuDfgI
	31ODtGuL8/qaNvB2qpvAAAsRl9Gu+HcX+pHyQiwY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f2f013d50-12ff37f9-94cc-4210-99b6-1e1ce78ab4f2-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 8f8c76c66eddae7c05d0643d04ab55e2341dbc9f7741e30f3d4934fb50cf3f15
Date: Fri, 25 Feb 2022 03:51:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.25-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645761084
