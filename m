Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6839E7B
	for <ddprobe@lists.linux.dev>; Wed, 20 Jul 2022 08:56:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658307412;
	h=To:Subject:From:Message-Id:Date;
	bh=X4Ho4iWcis/rJ3SDGEfHFbneDPOxKzF/Bi2uIwBtx9A=;
	b=EQ+m+7tWXXjfBiakhPxibDF5aDf/5Wm2TKb8iBrSEO7YaUa5riU4yJ3Fgz9f+Ejn
	etdYi1iBAGZCOzJosKDVaFKpO95OHZT9k0fzkh0oQE09Rdhgfwe9XDpC6J+e7dm4OtI
	gfXo+zMjOvhA08rb5DmI1/JdUxZ2Cmln1Coj/H+s=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658307412;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=X4Ho4iWcis/rJ3SDGEfHFbneDPOxKzF/Bi2uIwBtx9A=;
	b=e8ct+1LhQmTT1iwr3IiyTMOg+cvycaijWO0jUOq7ARkd9YlhOdQ74hz9WSAx/4/f
	PBROFdj2HYKRts9KkGvQyPNLKM5LRmmVo0rqov/5lzc26fqmEkT5Wzh1jRjWXUj9iqg
	u/sJ4lQtNkKsA8pzSIngbDb141+PHChhT2nuomKI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101821ad30201-419c8bf6-90b9-4ead-874c-dfa1689f5e33-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a5e8d363a8df5663e718d788d908656864727c718cbe03602e35fd6c4af26bba
Date: Wed, 20 Jul 2022 08:56:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.20-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658307412
