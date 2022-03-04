Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9A62B7C
	for <ddprobe@lists.linux.dev>; Fri,  4 Mar 2022 20:21:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646425285;
	h=To:Subject:From:Message-Id:Date;
	bh=nzG/no2NJUjEoYfsAR6WYqpaK/OSHAE0tJsa/koIjqs=;
	b=cb1SUdutNoxjz8QyrWJv3dkZuiNCbmrn0qWwU8EHK5iRB3VzIb5Lip77KOFr25ML
	AR++ISPm00uDunrc4QVseEeClBCy2kk9BihUIcgSfeVv69d41f8UIXzkD2MMm4mJ+e0
	ATvbnKdU3kKWNIx3l7ivT4MaiAUBmXzFnZEuUNV4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646425285;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=nzG/no2NJUjEoYfsAR6WYqpaK/OSHAE0tJsa/koIjqs=;
	b=DzpGjmK/TxjdioKNG2yDeF/f4gb+belbVmvwNHh0XRgZTcY7mDBb0NVJXtxE8W4M
	QIWXjDuyhu+CYB9PZFRx0FFcn6TAjXbE6v14E7gSUNSDgwv2rEV6PHAUVFjrweG9Ti0
	7EoaTKkFV2gaPMHKYxKI6m3zh2XoomqeZvp8PmzE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f569820d6-9a032e39-dc3d-4196-9c56-9442f38317d6-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 3ba3e7a1836f2b696fc0dbbf00020458d98548d0113392d68342f33a6b22103e
Date: Fri, 4 Mar 2022 20:21:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.04-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646425284
