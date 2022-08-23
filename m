Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6173EA3B
	for <ddprobe@lists.linux.dev>; Tue, 23 Aug 2022 07:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1661240452;
	h=To:Subject:From:Message-Id:Date;
	bh=a1MPlgVWjpYwllv7c8L4enxAO5IneTKNnNUSdC7ffhQ=;
	b=WYrtnst/HNG2Kg6/YnZqdHVm76dvtTsB+yzkrDNmKgSB1FdIzaxamOdkkrZ9GR7N
	W+UZC3oGORXumNQxqDlDWyx6uSULMdPCqZnKFptS09dfr/V7KPBBOMVoUbOzGWR0SDp
	+4wAiRwbQyKRrA3hNTb+fkbj143vBNzkXTawqi9c=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1661240452;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=a1MPlgVWjpYwllv7c8L4enxAO5IneTKNnNUSdC7ffhQ=;
	b=crstK1eUF6X861BmvF/VKTInwZ52Nl1791X0lyhUskZz0zocu4++OwoVU1E0Cjyx
	O0XSpYDIvUKdOSq7Joh0S6yEVVpJ725iH9WyIZf0QpnanbFtEZNiHAvAbILxVFnX7A/
	VHXwC+5DG9aAUxNyfIK1tLsIZYP7wmYf3+oPFAq8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182c9a5a604-99469c1f-bc8c-478f-8ddc-b9ac6a07fd8c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: f22471b0a0e879dff1657a339622f5977fb08a2ad65051c43731a8cdf9ab006e
Date: Tue, 23 Aug 2022 07:40:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.23-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661240452
