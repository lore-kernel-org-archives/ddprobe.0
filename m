Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C99097C
	for <ddprobe@lists.linux.dev>; Fri, 10 Jun 2022 09:47:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654854479;
	h=To:Subject:From:Message-Id:Date;
	bh=fLGm7vq5JysRyiw3ZOEb4Ku3wxYNT8O9ktUqxCgghj8=;
	b=fo+0Mg1hHM6CuwjhvXv3bq7SqnU8bhndDBXJRaKwVO3Njohu+aNpKwtlo+shmo1V
	JWsllogdkyWQs6gZ1kyJoScoBex6Y11I0fygYA8sUvFXWj31LgRHqWXbe5g3+TfOADn
	Gm91cStWLYSumvcx42DD30qxfpZbFes+JFUJpxfQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654854479;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=fLGm7vq5JysRyiw3ZOEb4Ku3wxYNT8O9ktUqxCgghj8=;
	b=iYMI9/wWaN7CXXjBHrv9S3pNgE/aPtTZvxJsavT+ej+ql/u5FWFiNOqPvwDO+wtX
	0IQiNd+6k0hsAkZE4HobycF9O/jiPvG/MFJorlwUoMQIBYMqAumTn6xHBYuxR0OuphD
	l6ma/Ev6vIR2xE+OwwfhsT4NvDgZxchZzKzQawU4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101814d036d7c-e5f22606-a40c-4366-b6b1-0a66d6669f19-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 32e0b2e5388293790f8c62431d6ab2be1e2dc417abbdb5d3e96601bac829a67b
Date: Fri, 10 Jun 2022 09:47:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.10-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654854479
