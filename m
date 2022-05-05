Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35F70369
	for <ddprobe@lists.linux.dev>; Thu,  5 May 2022 01:12:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651713178;
	h=To:Subject:From:Message-Id:Date;
	bh=vxs3dg7Db5DvCEknoShkxWDelTgfXqEC1fgAXG9w50w=;
	b=GQiwmHEeuQJELtQcvihoGUTZD8uB8pwuFpoOAz6zPChyuasizvrQEzvM4AAdKpHb
	sDNxUaD53Fwpt2B1H01LwZwi+y8GGHcQimFOk1eoG4uNn/Ks2Lx/tb2H2LM9/T/f2PS
	LJnKIQPm8JQ1xtew+xOhBcrANvUF68w0RYn1R8V4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651713178;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=vxs3dg7Db5DvCEknoShkxWDelTgfXqEC1fgAXG9w50w=;
	b=jIunkAg/+LxbRZ6cnMVfkLSaUyKdIqwdR0BlJs9Cn8GILd/WK/CXKe3hyKO4N6XO
	6gpln8VwPkVu5h63HCDfg6aJZbvtNlyXVPVXtkNDMDyQgS1NNQI1aqVWuNw3vAIlYeX
	0MNTjI7WXMPAKMaeS+ovZvZQMnSLHHvbq+oIGi0U=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018091c6fa9f-f5d59ce7-136e-4b26-940e-a56fc41f1288-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 99a4eb0cb00af8d6db8b9e86a17223eeed8f090e50975dcd5739adf6d36c2f87
Date: Thu, 5 May 2022 01:12:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.05-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651713178
