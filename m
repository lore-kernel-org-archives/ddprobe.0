Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0BAEE7A
	for <ddprobe@lists.linux.dev>; Sat, 14 May 2022 12:50:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1652532659;
	h=To:Subject:From:Message-Id:Date;
	bh=f8Z9woZtamHI09oAd4IROSJ98FvSec5+nSB5f767FhE=;
	b=kOL3iIB/ayaPDWuE+CXbStTjleHmhVg1piuqsT28BYC+c1x9qi/9bEAnwed8gMjE
	CYiu/880S+Vbc9VEIlzn9GFSAYiNA7vXg9bcBbL7hVxDLcTeT0NIjng2UrJK/c0ngtH
	stdlG/NMX1+WfUPUgKxBluM9WP/uEfIwr14bWUGg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652532659;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=f8Z9woZtamHI09oAd4IROSJ98FvSec5+nSB5f767FhE=;
	b=QAP7jFmTrPy3wxj2yEEcUwaKRgwup+g2IWMYh5wjMdzPVCKqOM4X+Hw3m/l7dkqi
	3pFGA86t9Y/M43m/rsOnfG6yTdya86iI5cTY2xt9fyySb7S5sabvpgZYOf5tpa60hUz
	soBwbD9S9kbjcJ2kGj03adgarsOf8Ecm6k9xHJfc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180c29f4438-4e23ef28-0573-46f6-886c-80d5a5e97c8c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 39b9130fdc90ee66490a158af704e57dbfe501c7b7554b6996b56e8adc7ccade
Date: Sat, 14 May 2022 12:50:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.14-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652532659
