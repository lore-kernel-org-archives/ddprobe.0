Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BC5BD137D
	for <ddprobe@lists.linux.dev>; Wed,  3 Aug 2022 15:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659540052;
	h=To:Subject:From:Message-Id:Date;
	bh=eDVSpgwnfUhH0udr3jc6ynSUVeVRbHQSpxfNWH+VG9s=;
	b=G+I45v1TmUrHiDvr/yEXjftJJtFkblz7gvoEjvYuiq5lsyLstq/n6olVysgsntZG
	PUKCWI31fniW8KDdL+EeYyG/cA+9EOROllsUvqvLE9frDddtSefxaWmQCa5eLnpTJEB
	wQjjqyz6C9HHJwpNUfZcKZ1FpEBl+IUmFhiRFfdM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659540052;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=eDVSpgwnfUhH0udr3jc6ynSUVeVRbHQSpxfNWH+VG9s=;
	b=Wb/q8rvHFbzMnCH+eECn/2zB3rjgrIZQk+MFBu9AtcKoup2YOtPY8gd+Jmpfue27
	1wGPL69E0X0JW15E3OwdcostqZLv9tp1WNUdRrvDOHU+LxnHJmN3jWHAY5j5J3r0R73
	zdiFbxqcpK4TP4nVg7G9bVoFgzuablebE65ltpbA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182644b9a81-e56da560-5926-4338-8161-5f077814e018-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 076638027d48e9657dfebda9ad707f56b800c13bb4632910b1e724d19a0f6427
Date: Wed, 3 Aug 2022 15:20:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.03-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659540052
