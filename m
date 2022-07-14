Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 12DAB3206
	for <ddprobe@lists.linux.dev>; Thu, 14 Jul 2022 11:56:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657799812;
	h=To:Subject:From:Message-Id:Date;
	bh=wNnkasdDkORwtkI3E4NNwT/JnLZ0MHRzObf8j3xu6sI=;
	b=MpDSUmdU7b5a5Xxc/ZVP26IB2PatxJBRSJW8GaMJJfaNiukqAPHdTidPkNdWG65p
	AeMs+3sDgrqjBd6USg4vOfNNlGCKr20apGA8qX+JLit0eMhWEJNLhoLm0dvVJ1ge2sx
	D3TqjbGzykjg4eiqvlpYZ9ipxvM06OwfHSAKWy0A=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657799812;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=wNnkasdDkORwtkI3E4NNwT/JnLZ0MHRzObf8j3xu6sI=;
	b=ZgfADIvLTvTLHF0nyIwuuHpTYyFlKvNSX7ihrSzJzkyXVsQXeF3+YJ74E8cVipU/
	TKEb8bcDyCnhg9iUw05FvKO3QKgsGFRrtgnvAHkBaDuF7Zp7tSuXacQ4KUvWfU+ET84
	HVBwhwubTNeQU8dFtQcOEoS4G/6mhMfujPPtL1IY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181fc91a4bd-7946a57e-ecf5-44b7-8f97-60ce4109afb6-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: d582902c7b711707469c350599293a1eb33cb52595336776028031fe5b9f3506
Date: Thu, 14 Jul 2022 11:56:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.14-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657799812
