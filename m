Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DCCAF7E0
	for <ddprobe@lists.linux.dev>; Thu, 31 Mar 2022 13:27:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648733278;
	h=To:Subject:From:Message-Id:Date;
	bh=1WR8CE3NXxs3qOD1qoBmqapk3eXQmPYU9oubrCJqb+M=;
	b=iAvpdJY9tdxG4F8v8wMhzdfroMgohXkIhU5hOQEbsbeYeKKWFdpvw9qCyyaeFs/8
	tRLBJkgfxlT/y/7xNKUSjfvqJJ7XQbyx1lMraBOb3LJclCttYJ0dg1jsiCvqsOeFEDR
	9KzTzFwJ8AiAKSaXhhnSDKFi3hLGS7dy2AiSOe9I=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648733278;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=1WR8CE3NXxs3qOD1qoBmqapk3eXQmPYU9oubrCJqb+M=;
	b=cZHDcosbH34vGRK1soTzaytpj60/wz1oWOtMd8wvD71l4GnE6ETHuYrURUv4bCjH
	x3XS1idZ3IX0CWjkuTSgpeqIL7gvbYv5661OIjXuMy8/hh7JDFa3d5PZjPmZl1y+zkY
	YHp4C0YefTyJKrIjwjPKObombjboOt+Ezcn8NsNQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fe029502a-b44c8f01-4ed6-450b-87df-9bfaef355d55-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 4761c0e1c6a75df58013cdbd0c003ad2e09732ce28dc0f50f6efb4cbac5477ce
Date: Thu, 31 Mar 2022 13:27:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.31-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648733278
