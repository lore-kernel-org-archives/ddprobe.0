Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3086023D9
	for <ddprobe@lists.linux.dev>; Sat, 26 Mar 2022 00:35:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648254958;
	h=To:Subject:From:Message-Id:Date;
	bh=wGNhzKlNhMZiRjX/BFduzxQXwd7MfVC8e8FN/u15yLM=;
	b=cBGWoM2gnBfbsjrByDf3IqViQzDZ/eTTlzPPhSDLwgY5PH/j8hdTnHNBvbQ9uOoG
	5yLh5GkJ6r/9qhZ5h+zJw7Pa5zJ8oV/yqNgkuW4Z6d4eHdNTcnb+1BM3LeFzZ50Lj12
	xRCqWX6C7Q7bq0loTFxS+mDXrAgnAhMre1EJEr+c=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648254958;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=wGNhzKlNhMZiRjX/BFduzxQXwd7MfVC8e8FN/u15yLM=;
	b=bLaLdUsFdxwF+nNI3f+tnNhWxQBX1SB754DLvFmxyGwRRgRimfXIqnONUGC/O/fp
	4Lx9PSQ/TbAh+5cOZRADwJ+To9LSTD7ybJT0d2qAc4RYumxaMp/y8gk9q1ZRviyQHhS
	ylnNhxuHJ4mX1kDYDQpFpuaEjsV9XywZzjtotItk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fc3a6ba99-de88ed58-430c-4511-b2ef-6d90310d1e74-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a19490ffdc25cff0e08bb217ac14cfe121243e2b2e768ebe69cf02c0bfb35cdd
Date: Sat, 26 Mar 2022 00:35:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.26-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648254958
