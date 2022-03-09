Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DE67117C0
	for <ddprobe@lists.linux.dev>; Wed,  9 Mar 2022 09:41:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646818885;
	h=To:Subject:From:Message-Id:Date;
	bh=4uivXrFudqPCD0lFXoWEZKD5JykgS67KpBnMhd9lZKk=;
	b=MOTJFlz0f/8U8GSYPhFOc7cDp7xW59xUzBhGCN3bmf7B/rWW1YObldtw1hOGNaZe
	w6Lbcqp8MnEMZqRYrOi9RH403AAzToKE/yopjae+ny8ayGQvYZ2He06kisHYUwu87+a
	vV0uPRVlYYgvZ5hVbxrBcivFXEzzvQcBMCqcs5Rk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646818885;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=4uivXrFudqPCD0lFXoWEZKD5JykgS67KpBnMhd9lZKk=;
	b=HHCwcSIZobqmGtZDvEpNvfYr+aCHCBhuCJ7f3cD6gBa/o3ImTGvh9V8EsBnX10zY
	zhJZUVOopK2PdYslTBQRw42S+C3gyUTL9iR8mbskeWhFtpJawMNBk3KkwxeKO1X2qoJ
	dgENHL5HHzdRut5qbb2YysBC+3LDxGD2GeTlgcSM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f6e0dfc93-dfec090a-33de-4c08-bbf5-5dc7e234f78f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b8ac304f9764df6d6c44d1a99d0bc6c6f9e77b7db0acf7d4fae53bb335d43783
Date: Wed, 9 Mar 2022 09:41:25 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.09-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646818884
