Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AA9E64C99
	for <ddprobe@lists.linux.dev>; Fri, 18 Mar 2022 17:36:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647624985;
	h=To:Subject:From:Message-Id:Date;
	bh=csyd9g5scz3bcoU4NCd69mX9aWNXsMZhzCWZjVLHBf8=;
	b=YWUopvQ2WrORBNe+TIxQmFtI7j90zKoCLNm9gZ8YXvmWUj3Padp8Jtn9VczyPpMw
	OXmK1HFFf5Ss4eE+itkHSXytti5B98P/uCqUQzbcYTA1aKIZIe4D8wuSUOATVnRQdIj
	JgsvjrnnPcyb4pXOn97kHQ5gQApLhgEI/mCpDxoo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647624985;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=csyd9g5scz3bcoU4NCd69mX9aWNXsMZhzCWZjVLHBf8=;
	b=NajxYBdwUO3DbRkSfyrll6fOTtDUc6eFBvmLlRbe2T130A+6tGLRS6ckDkNpyCkS
	ECB+dvPjgKVkE+/lMjPkpJA2VUbP+AbydMOgBMwl08yJLETVwms1N1VcvGTqU4YgmLq
	oqavNzao/X5iY0W4rVwrU0RIAOES0DXBjBDBpwQ8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f9e1a1912-ac6f731c-d8d4-46bc-9327-f65f93e9f6d7-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: d30a245b0880bc3e2f4c6e4ce5c951be5a13f13526ba8f61c9b50e4fd65325b2
Date: Fri, 18 Mar 2022 17:36:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.18-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647624984
