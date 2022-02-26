Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C4E177A
	for <ddprobe@lists.linux.dev>; Sat, 26 Feb 2022 22:46:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645915585;
	h=To:Subject:From:Message-Id:Date;
	bh=GM1gZ8AKB11jaExAUe95Lo5TwWtavpwEU6RrlEM9e9I=;
	b=E45/loRwAsYvyHeTkp8jaEuiuF84gMIgj7Y2lqsLqug7Asp261GBxvpfOWNtvHlN
	ZPjkZ1XmbqX4HS5TVEiTz9NL19qqTGPq3WU7BsyfrMs3uXIUWe3lfbL3SGpjRs2bksX
	xL4OAlYt9PsmteZdR9um7YQvi9Y8hMP/kZ25q09c=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645915585;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=GM1gZ8AKB11jaExAUe95Lo5TwWtavpwEU6RrlEM9e9I=;
	b=gNEvHnzuVOJvsixBIHdWcgc6AvH3dROhqkpfxe4FxLYJpYV4zyKEiqnqZW/XNif2
	jKmd5DLPa+piPGxLVJd6RtKem3ftzSBzKvAg89G7eq8eV74+R4GiLcpK1TutTyeqk9n
	iGd8ZHkRMMpyz1TDQgg/W5eUQHSTOvXMw+f5jNYw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f3836b8eb-94306866-2159-467a-bc35-f5147fc8e60c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 9ef6b9c966859d390f29b5e9b63f42239c067d9871bf031bd68f89b4a7d220cc
Date: Sat, 26 Feb 2022 22:46:25 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.26-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645915584
