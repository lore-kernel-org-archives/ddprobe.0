Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D692370
	for <ddprobe@lists.linux.dev>; Mon, 25 Jul 2022 10:36:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658745412;
	h=To:Subject:From:Message-Id:Date;
	bh=B+klwjpEqQk0nyM2WmE3mJAaoUbLX4GziLBAHMEx8Rc=;
	b=Lc8m/zSXYAoKTjqflldm9mdLWWxve65bk30Bb9n6xJdYzqgUD1s0fauI6bkWXIu8
	tuMIWSXZYhJ3tAHCeFuA/SzRZJxqR6sKVdT9eijUWfnjAhJI91z0u5HQ4eYiL+Wkv0M
	x7i6WNOJrYVAEcXjdt1PD48edmcQPmufJdnY2C6Y=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658745412;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=B+klwjpEqQk0nyM2WmE3mJAaoUbLX4GziLBAHMEx8Rc=;
	b=jYRLCgOSlteyl9AULkokmuUDDmgSIyrsCw/2UMviIQXYKQnaXfe2wLUxdbhJwF9G
	LkfhcdjnQNV1OPcYy2+vfZfhe7vOCVtW0rknp3zfPQVl4bGfL+qGtdspI4Yfj3H9n4A
	QhYg1q6imRcz71mSLH9z+t4r4n4UM4osULTXLu3s=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018234ee5aa6-9d5528d9-e99d-4bbb-ab99-bc522658d6d0-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 90061ce4a7c8e500a17340f86f013d504407a878e498ed3b76c51a85c9995241
Date: Mon, 25 Jul 2022 10:36:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.25-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658745412
