Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A2F17F
	for <ddprobe@lists.linux.dev>; Tue, 17 May 2022 00:29:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1652747339;
	h=To:Subject:From:Message-Id:Date;
	bh=Pe6bZqdqYqq244XsGTimloKsKsDyeoy+bLqGQHMQQbc=;
	b=QbyBNjW2l9yXi1EjL1W/NipGqDiUMElnRUBc+5jPy/7061LT8fjRdEEOw9cnqfPo
	5WxNbj20BVMCq949kAe3BJoUUrE9GCTyBX1z0KJ178I+eV+ZjQ66XrMsbzPKUYuCjKk
	e3icguyDumbBC2P/HV1zvqwiu8gWP83czo3wDSVY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652747339;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Pe6bZqdqYqq244XsGTimloKsKsDyeoy+bLqGQHMQQbc=;
	b=bLqeg2u0MKvM5yGV1Fx4mr7L2L/NmfCbXXGRoQmJB+AUTg0Lbjt7J6//EM8zLh6U
	3RUOKaZBdmV++n5OAPo+wAtFdJEZ21Z9oX1sOMWqwPp4v+38uvfRDP8uKpTU0wzulqG
	KwEaVw63VgJimNHvIEWoaxr2aeZfgNf3gdbir5P8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180cf6b0628-c1239ec5-c0aa-41c7-91db-d9f25af11e04-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 63ba04acd88f55a43ec25f3e8b88a11c21502a7faaa44ca9e06316165bb26ffd
Date: Tue, 17 May 2022 00:28:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.17-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652747339
