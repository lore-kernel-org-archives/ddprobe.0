Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6FF703D7B
	for <ddprobe@lists.linux.dev>; Fri, 18 Mar 2022 07:41:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647589284;
	h=To:Subject:From:Message-Id:Date;
	bh=bkIsm5wj+YbWLO7QX4G8YcmPBZj4jv2OBDGP1BcCtrE=;
	b=JMxnsi3k2oj94QZWvranLW4Avuzzdp1ZVVIj7//ngLuwd5HCSfVohzAm0FqmcEzM
	INhsX3ZtNTkQhzXFv6kcjqQK8RMc3DfHpgD4BIf57ef49dq7WTjjGf53WlIU4U3JALO
	bKQpQiuUTIQb+x3KRoEzseejGfnmnug+YO7SnE9g=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647589284;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=bkIsm5wj+YbWLO7QX4G8YcmPBZj4jv2OBDGP1BcCtrE=;
	b=jHMqXvLLxE9wLJjwXoI+N4JmzdOrfs27LMwRI/Zekzs/AuUIQbzyxw43hATXYYZS
	XAyHTH4ACWx6Z1rAgIMWx2CiiHGTS84WnO3oQMbhknIpX5VT37n9av2/5wNFmxFC62w
	JMVDVcPYCE9+FSCa6+4qJgHs7AupymEzQM/7CpN0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f9bf95b8b-b26d1395-65b7-48fd-b111-7c2b2b84ca68-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 6409a6640a63262d8ac2902a5ec7fc40be6f986d297c6137da13ad0bc97c5f56
Date: Fri, 18 Mar 2022 07:41:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.18-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647589284
