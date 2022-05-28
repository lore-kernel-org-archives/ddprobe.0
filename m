Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1124A7F
	for <ddprobe@lists.linux.dev>; Sat, 28 May 2022 18:46:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653763619;
	h=To:Subject:From:Message-Id:Date;
	bh=R8W+SxNJhg8+3b7wV1asmgESp0sT+Ac6sjTLlvhFtBA=;
	b=lCRqNc7Hw3ujdifhu1sZox1qQEwiw8BkGRQ/xZ8CvwnUOnALChsU4hXknGNU1l/+
	2iQhe5Pl+HzQXlBBobSzlDhdwa0ZNs8oTy6L+oSw2O5BYAZdc8OgmrSwubWHwUj1ODX
	EWz/vFoyn9wBceGVkpB7JENhvKu1cmWREt50Kou4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653763619;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=R8W+SxNJhg8+3b7wV1asmgESp0sT+Ac6sjTLlvhFtBA=;
	b=kIyt3/yjrQSQSGw71YGmT/rT5Q/OrXZ5pvtMNVkXN8jKD2hhpa/t6ZM9UqqzE/Rk
	o4vrnJFduIA3DRTKwALv09XZ2kFaOUaIHGAlgjw1tpNCXylJadlTimYa1HA0UWcmkhZ
	nENsAH7P5nOAsuV+C4rDvY0pxUqFdUu68cfQneTE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101810bfe39d4-d85c0bf5-5718-4791-aa43-c7deb13dede6-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 52e0ecbe0a90446ba5c3d0d57b9f6ec52636f366ec9354b880780ac9843412bf
Date: Sat, 28 May 2022 18:46:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.28-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653763619
