Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 83B4E163
	for <ddprobe@lists.linux.dev>; Sat, 19 Mar 2022 15:36:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647704185;
	h=To:Subject:From:Message-Id:Date;
	bh=nMV6ZHQ3SV1u5bXTez/zLcC0Z5Sjkx5eGUDykJN98GA=;
	b=aNW4r1SIU2JWXYm5mLjxAqlskiI8aGdx5QJZhx6DZp0i1e8Qb5xlnEdbZP7RlUhL
	ltGvRxH3bbvyp4MtFZmUUJWmJYCadDdqKm72hCBtpPTX49VkCVVNMYXiX/8HA9nfPEv
	Em3jo/SBIJ+njmX8tIorgWqvycuQKCBwydg9TRDc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647704185;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=nMV6ZHQ3SV1u5bXTez/zLcC0Z5Sjkx5eGUDykJN98GA=;
	b=jTk4IzQUGTH0rU+JgGMXZJhZk7jwHIre/i9dYtaSGj9S7RWIspJy1+tR6zP4x7D5
	iJ2RPIdQIAdMWbHnsa49d/rvbD4HLvQXeS5KxeOVS1RV/tCxz6Ct3ufJQp+HC542h+R
	CIq0dYrHHroqkQq9Nz0BzXm1VeuZnKIWDjVnZy+E=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fa2d297a6-a29583c6-4316-4f28-ac7c-0b480e7548ff-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: c8a79060f94b36c82338f1834d24338a6e2a4254824a00b079fe274895eaf66c
Date: Sat, 19 Mar 2022 15:36:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.19-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647704184
