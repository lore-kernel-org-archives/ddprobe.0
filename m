Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 57BC417EE
	for <ddprobe@lists.linux.dev>; Fri, 19 Aug 2022 09:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660902652;
	h=To:Subject:From:Message-Id:Date;
	bh=LJQt796feHN2oZvipeexl94JS3O0jKTp6RO5rBk+9DU=;
	b=lRtqHsvFHO1zyOXbEn9hV9empnA5GnnNd187ZjAuU2QtWDlRjd9cmyHmo49s81+0
	GAPQ5fekes98pbA+gLxqDN+8biJ5Tm/DDTSUnlFEdzLzxsmM3ivfh/Q7Iyg7ZvbaMAz
	OYP3WQy4NQgf8Dl6vJU8FdClEafY03orVXyRD8mk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660902652;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=LJQt796feHN2oZvipeexl94JS3O0jKTp6RO5rBk+9DU=;
	b=CMI1xP8zFKwb0M8hyiYk8bZbD5MHM299KwDjdkRP2S1xjP84Orck24ZnnfRHqlx3
	DWBZ+VherX0abXfdagtmtvZ0Z4MaBeJIvc9d3CmFweadH/VNl18tpp0loa8/MaZhKfP
	v+0QbIa4X7A8zTnIdwd4wqzVAKYwaDiy70Ff5cQk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182b5833a8e-b740a6f7-c9c1-4daa-b3c1-6b9a2472a29f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 2a1fcb9466a20cf649dcd02b04275cf43db6fc83fb8cadd0d41f4b75b15973ed
Date: Fri, 19 Aug 2022 09:50:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.19-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660902652
