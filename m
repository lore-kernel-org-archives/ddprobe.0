Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E43F6185B
	for <ddprobe@lists.linux.dev>; Wed, 20 Apr 2022 15:17:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650467878;
	h=To:Subject:From:Message-Id:Date;
	bh=7Vfn+IP6HkNuuFg1aIxM9xYQeFJaM16+C2zj8/UY3/w=;
	b=hzDaEPLQ2Ovpu26iod9dp0ESmtXlgsXe4gDw0g8UXTB7SsYXU0lGs6rU8p/Tc/Jv
	S+TLh5ze/frB4C6F3Q6OEf3wCujOzPVygwpf2HZcMNi3P4hTe9DVgg7n0wlvu0kPwFc
	/XR9ZLRd5AL8fXpSJBulYRyuTWXyq9ywRQXWq+44=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650467878;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=7Vfn+IP6HkNuuFg1aIxM9xYQeFJaM16+C2zj8/UY3/w=;
	b=e8MKeqV8926+ikZotRgoIiRan0DOSRmBSQ4/2WQxwPPz4y3whpSR8gD91QNIPJ8B
	H7RIzpxggzY/D7Mqw/P3peu0hJq8tNiDkewoGekV1+raD0M1nQVTme3mO1VpO4tOlzr
	db7oQAWBGiMLT1S1xWtKLbU6Kuk9+iSKKthrDSPw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180478d359b-0b99b7ed-9917-40de-a01b-f6428ff702c8-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 676c690819fedfe2871c1ea5c5a5867b9ee885183740392d1c9c8df67b04f530
Date: Wed, 20 Apr 2022 15:17:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.20-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650467878
