Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A33397A
	for <ddprobe@lists.linux.dev>; Thu, 28 Jul 2022 22:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659048653;
	h=To:Subject:From:Message-Id:Date;
	bh=J3gRkbHEUCDcMB59CNUQx0A2eriTPw3udFvBXYutvgE=;
	b=Kuq/57bqQK9ROwuGwbZgdDmmW7HHKgQJ8K8z2zA9r5d5m05/NPs3xIblg8sWtqos
	kZeyvsQPy/B1Za+Tvtu5hanQtUyfEdullYrsfIqjgp70NB3LWUKZiaIR+LYn9gPVik0
	clRZR8EatdubSW6ss1ZyuPhVs5jgA4VH2tUhr7JE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659048653;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=J3gRkbHEUCDcMB59CNUQx0A2eriTPw3udFvBXYutvgE=;
	b=YUwuO68VhfetilmN8Bnb0iolt1cFNKNXybPQXsc/6fF4HA1Kpb2DwD/5fIflxLtz
	C7OZ6kaA262XfCoJQxBrPJABfviDYD0ALbqFkQfajKpOn1gMSpd6GIHMftKhHqdzIuV
	pw4R7ZNdW6RBycIWGQ+CRlmVuWqfu1U9x8X/nzrU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018247016f05-d9ecb792-d59e-48c8-a5bb-84cebd8d5c09-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 5410ac0de0d9f338aa57a32f375cc57ac0c5f2fdab1c2e49e29627dc7b7754e6
Date: Thu, 28 Jul 2022 22:50:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.28-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659048652
