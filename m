Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D1C67C
	for <ddprobe@lists.linux.dev>; Thu, 31 Mar 2022 19:57:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648756678;
	h=To:Subject:From:Message-Id:Date;
	bh=HdcRRgqxJCQeAOP8sQqXySr8YpBlI2zDe5LhLAhQt80=;
	b=IF496yOou90rtIYBjQ6mHMCqbMbQpSOYBuKgLAHXHCG8yQtUPHznmxsX/Z89fW09
	1IJEhlNODuuWYuUWmng2kBCBwXwZv6CaHnrxmmIWdDnNVQT6MyzKkSdR1V8LUA+vOlL
	bSswgek+Pe+e/x1rKNMijrmlsumxQVfKmOMd+izg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648756678;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=HdcRRgqxJCQeAOP8sQqXySr8YpBlI2zDe5LhLAhQt80=;
	b=BXqsH0U6idizM6N9ews+SksLfaK2r7LUn4nuKy3wck3nxFho0QHKYlLXEjhks8Bu
	kicr5CmVmfXsamfSUnpGGiEI5EAK/cVG+OH4Z1GU3dCKxL0LKFW4/3Kd1lkTdv55Qyj
	1gMVoeqVPwLRbtFS7KxmyNOvZrcyR2rrniiZbc9I=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fe18e5e7d-e82cf0d3-bc94-4551-9c7c-aec8a9067f4f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b987b63c88ccd42fdb52f95867177e743c4e72e2d29109053d46dc8e71d4c75d
Date: Thu, 31 Mar 2022 19:57:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.31-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648756678
