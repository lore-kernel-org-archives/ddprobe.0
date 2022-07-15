Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0195C3211
	for <ddprobe@lists.linux.dev>; Fri, 15 Jul 2022 18:46:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657910812;
	h=To:Subject:From:Message-Id:Date;
	bh=2Re/ZJq+LhgNcovvSGzyYWqZw8YKV7q00VPRbi2OLd4=;
	b=Zo251Wzx/fNFnM0vKxIhCZDyGFkn9IjT+cR0Z4FArnRx5LAmR2Bf6TuG9Eg2kBOI
	IYx1YvGpBwtMbxbIwa4++0GQqn+T357htcjuKBCFwEZtkgDnLU/0VofNbiy8y7wcqKH
	A6Dr2Txb7eTBeLggjoMrQ8GkNpyCOATsFX2Mj7mU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657910812;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=2Re/ZJq+LhgNcovvSGzyYWqZw8YKV7q00VPRbi2OLd4=;
	b=HnGGkccWjz9qN0nGFdRYQc22/2/fJnslWn27cSgiL/YsHCYr7W0YPISjAN4dBooJ
	i7yOl4X37IUFocQf3k30cG+8KJ4nNtvayxm5U64XQSW0I2g6TFhahLDcull4mGVgwU0
	ubPZg519ujjoUoQWvEY8RuUQLqiJMs9xhMriLYmc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182032f5ed1-e5d3f11c-707c-4e92-9e5b-5726804bd677-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: d5c31bcfdee1c787eb3045ea3bc45defb3b3196cd66dc0be6c9a63e58c726f47
Date: Fri, 15 Jul 2022 18:46:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.15-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657910812
