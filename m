Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29D117A
	for <ddprobe@lists.linux.dev>; Sat, 14 May 2022 14:23:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1652538179;
	h=To:Subject:From:Message-Id:Date;
	bh=61SkwoBQsCHHgL9bj4WP/WBhnOOAj0zE1DgQUlvSTKY=;
	b=D8SA5DICmcsxWZsEvrHcAcY5C+LKO7OqeNhid3V3RX1k8GXdlf1s4riKj9XeAFxF
	vYb+z5M/1JOZYbjn3FtB/1juKptUSqHXU4MyR0I3DKpbA6NkpAVBCQh2kr5y8Ndx2mp
	DIQ62C9Y3TpB+OV+pFb5jXoHDPzE9skvbHanJ1+8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652538179;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=61SkwoBQsCHHgL9bj4WP/WBhnOOAj0zE1DgQUlvSTKY=;
	b=PPMS3TdrBrvNtunTVoQii7hlINJ0Z4njwnCq8o5z92UfwVo05B769KgkQFMooiGr
	J1OpZgR+WJRELzjBB5kv9unlTS1R7U4SQfskIXr9IyCqaN/cMTqE4aZQg6o9CDaKPjr
	0wRsY3JH8AO11aeQk+9y0HObq9v6KSAXAVy0KTTI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180c2f37efd-dcf8a72c-f1ad-4035-9b63-82dc197a18f7-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 09d24f176fd864aaa4d42acf22886e673717cd2092b84bf3ed1e985b0404253d
Date: Sat, 14 May 2022 14:22:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.14-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652538179
