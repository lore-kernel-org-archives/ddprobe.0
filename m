Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C842F3FC2
	for <ddprobe@lists.linux.dev>; Tue, 28 Jun 2022 18:06:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656439612;
	h=To:Subject:From:Message-Id:Date;
	bh=JLrQ9BhOUlHigXSSlKdHP4jf6JimIPfzAbWKHKMClu4=;
	b=K2BwemMiytZXgzrUUVnSvFtwzvMoxGu3DtcKa0WnwcmH/xJycVbCkDxnGwFTNoUt
	gF6yW/Fi8cIO3XryVNDvjZRyzetP76dUcwBq3OFNNNxOFTFqwFCGFC/YgbYXwfYYZhH
	Jh0XSbKV2mqAhI0VOHTGhA2YjmJvZO01c6nlNxHY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656439612;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=JLrQ9BhOUlHigXSSlKdHP4jf6JimIPfzAbWKHKMClu4=;
	b=hEtmarEtDoN+R4PTYnIFlCoUu+Ae4LuGKrzUdKx0/cxVEzHJFDCX6xReKv+SmKq6
	17kSdJST0f03scfghF/PANUV1oCKWRMujpb89QOj4XrgG65wRmCDUKhgSmylLRtr9rI
	MUDvX7kkYqzw2Ej6QW/RJ0lF0CVoYCe+F2fhxtZk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181ab7ea375-07ce6252-db2d-4337-a3b7-6adf242ae370-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 7179ee4b3d07d6ae2fedd80135f024d61bd59b6b0a144e9f55df408c8d8f98a2
Date: Tue, 28 Jun 2022 18:06:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.28-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656439612
