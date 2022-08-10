Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 729FC17CE
	for <ddprobe@lists.linux.dev>; Wed, 10 Aug 2022 08:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660119052;
	h=To:Subject:From:Message-Id:Date;
	bh=OZy0zRRBB3nJUh1yILge8cEKnBzGI8882Rhp6xDiNLY=;
	b=grfgV0qlJT4rX+BZIgr+0jmPfrGxtP3tjWCmYwC8TokTSQqCJSeU1Vptzq9N1932
	+VjoOEcHb4E0SqTtejPj19yFqAcEtSGAMVXMJIjYlYVjxjqNuJOhl+Xo1x+0zaCkS9s
	X0ThZNGvOvgu12Lqh92OCZNiwEdeenQdvm9RjUVM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660119052;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=OZy0zRRBB3nJUh1yILge8cEKnBzGI8882Rhp6xDiNLY=;
	b=fTyx7ZH6pGkmWyXzaJ6tgckO4moaxVNI0mRYI3dKnTQYJ1Z/0b3J5BsNEoL57J4p
	R7AZs1li8VPVxXX5acyQ/umZ4CgoPciFm+ML4rgLcH4MSMTrRcTFktBvngX07NV+HuS
	jHdYMLJyGdH3xYoT6P21ZwT6Iq34DWNlvKFmii24=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018286ce713c-a0bcdc68-30c9-4870-b938-782622484fa6-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a484dc684894f63e0d5afa3880abfbb555654440ca48afe2a9eb566997050887
Date: Wed, 10 Aug 2022 08:10:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.10-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660119052
