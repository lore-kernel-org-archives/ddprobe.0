Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3DAF67488
	for <ddprobe@lists.linux.dev>; Thu, 18 Aug 2022 23:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660866052;
	h=To:Subject:From:Message-Id:Date;
	bh=jmzoCLXr/IRWn5OUx1zk+lJDKkAH6aNuvzYCt98nl9A=;
	b=jjDzX4uH4G/gJFPfdrBNuq5ZgsiSmau0hO0j4oo3i71jmW0qu795vMzgGWboKtJG
	+xv+4Ft2yUzEuAzpqGUVT7Cz73M+z7izfnToi2meu/gBfomYJh+mAR52AFQHd4JK2JZ
	LMCG4/Z52HHSzE8w/Tqeo4AA3cjIqHMuTkZL2vv8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660866052;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=jmzoCLXr/IRWn5OUx1zk+lJDKkAH6aNuvzYCt98nl9A=;
	b=juQJsliu/7ZjF86gw6XhYXQQPC40LTenzwlCHtZSOhkCkpa2qNyIzejJ/iTYwbMO
	7NO8S8zJrlEXPRXe0abgM3r+ULjcvfU1UxO2W5W4F75fzfsL+n+1F9MFS5oa1vvAf+f
	SGPpX2x17Zdvp3JHF4eevFYyl0W36iuTjZjdC108=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182b354c1d4-5cb1d0c9-1152-4634-8f38-1b69bfe42f13-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 6a7dc91b3546fbcb012d686930d3efbb905ae75d5d31f10f95e88b2af2062db4
Date: Thu, 18 Aug 2022 23:40:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.18-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660866052
