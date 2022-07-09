Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 110307A
	for <ddprobe@lists.linux.dev>; Sat,  9 Jul 2022 14:46:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657378012;
	h=To:Subject:From:Message-Id:Date;
	bh=tfg5DT+N5NmPfIBV4xM7gj1k3LOyWwkr8J5BImDE1Pc=;
	b=gpDv4+ZA1vC4VNX68i4LSRGPZhW2Yp75C2gQkzTp9bsLwuoi9HYUJ7kselNelpem
	KqzicMhQFgpj2rYfVcI6Ac0T59Fvf6cCt0Uq8p0tAtgz+WF/5rIlBUG/GrH9OfOC9CP
	Fb8hs5GFgnuP+cxK9oa9HlQFY3owLSKWTE+VvF6o=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657378012;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=tfg5DT+N5NmPfIBV4xM7gj1k3LOyWwkr8J5BImDE1Pc=;
	b=SCyd0UutTnslwUrIW1KuE8XGZOAkuPsnNYmQauyn0fLxYrqtB7BdcfgeeOtiwQyN
	Dm/etyB30LJHBGGkK8YCNZC1Duk5kbzMM2SiHWc6eVvflkHKXuAxDwc3bCtcDIipxNQ
	+YXsASFPMvc4JaBv0CSMF7lWDlJ4IV4ZEbTm8agw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181e36d7cc5-c4acd171-d990-4c7c-90c2-ff49b42c847a-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 634d93fe0e23fdb1fd65a728e300208959e0b72fba47af2095c5c0cfe75be1ff
Date: Sat, 9 Jul 2022 14:46:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.09-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657378012
