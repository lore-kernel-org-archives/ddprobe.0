Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 125187B
	for <ddprobe@lists.linux.dev>; Sat, 18 Jun 2022 03:45:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655523959;
	h=To:Subject:From:Message-Id:Date;
	bh=3BF1LxMZ0Bl3yVIfbUp6Sa1VUQ6AyybvPg4irHu0An4=;
	b=R3U/+es2NWUHwSTJYMjWVSAgPr5Iul3fPzg7b3CwP0SAMrWL7gpCSteSnLv8hB2+
	ibYqGSb6DZGIzs9ZC8h2WA1McRWXjA7TrKRy9SJu4xGhI2Fmij3K5ThD/NuJmPhTejT
	uoPXfn0d1PRfpUkrCrJCxKuC1CQSa5jZD4GnV2tA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655523959;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=3BF1LxMZ0Bl3yVIfbUp6Sa1VUQ6AyybvPg4irHu0An4=;
	b=Mc+wKC9yjklB3HTOad/pIoJEWRXUhJ/Qx2GRL6zPJk4rLcKnBLcn9DTuUAaAtafH
	DJpa9NVmApkJ1MFBlfqguhyr4eXk5V8CUuHLGdRQtBu8AjPSbq3lwHPmx880pi6jmCn
	we7e3E/SHbx+QjKaPM+SuGvZ0KHAthj2lpKfKYCA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018174eae1ef-af92f077-797f-4e51-9568-ef7295d30986-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b437dd3d25d3c68b487f99f15a5dd2c404a15a4c91063b8467bc5771ef0adca3
Date: Sat, 18 Jun 2022 03:45:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.18-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655523959
