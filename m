Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D9AE6C75
	for <ddprobe@lists.linux.dev>; Tue, 22 Mar 2022 13:41:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647956485;
	h=To:Subject:From:Message-Id:Date;
	bh=g4Lu49qaeOKeZBYzLBTNct47kPUZObpmKweM4lHusTU=;
	b=C/VPIoK+106B/GGuxgVfSv3S/kX5q/vYl16UxNOZHOW0R8LxvVhjTHxS/RTZV5Fk
	pH0iEORziegcvaMLZkWsfweFNm+jkjsscanTe1P9OcxccqanaIrdZZwXdMEmcAWyw1R
	idk9YxIu72rrn/Dwo9QBgZz1MxfmyMKbtrIkTRzg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647956485;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=g4Lu49qaeOKeZBYzLBTNct47kPUZObpmKweM4lHusTU=;
	b=MluOVHl5Dkig5kAMn5l4f83HbAQQxn8VVIcf+ejAlhv7O9horbdE+Hzune8lJ6HN
	L6SzDCDkBxklbia/GTf90iNBsWnziQ2XKMkoqhfP/CrWhomwwDXhCoV0Mt/BvoPpJA7
	wg9wKpzkfi89odT8KEYq0e/4rrewPHvJFjkYasHo=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fb1dc62bc-9947fb3d-77fc-4586-ae3d-36fc375ced54-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: dba36407250aa01b858b5b6bc09679751196b664bdb90d274281ca013427cee8
Date: Tue, 22 Mar 2022 13:41:25 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.22-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647956484
