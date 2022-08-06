Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7DAD01114
	for <ddprobe@lists.linux.dev>; Sat,  6 Aug 2022 09:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659777652;
	h=To:Subject:From:Message-Id:Date;
	bh=A2V3mVojCpdCNErURjELv06V4MYS2HaWhr2cQg+snbU=;
	b=JVU4HhoFGqpJUbLMhQO+wWsrMGlQVBhdW6y5/ptGqGIcU+q6badRruTr3z13dQ77
	dLu+JudCLMXOyuWhWOPYPqEH7Yw7US1nbzwOfukonsrhj1RZWJrJkUbKrT5KQzxwShc
	h22JLfrntdE2shPNEjwiCPY+flICiUedmVXWvN4o=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659777652;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=A2V3mVojCpdCNErURjELv06V4MYS2HaWhr2cQg+snbU=;
	b=izQoCJOvfZGs3yB/3FOIHDPmnTGOqywOqoqKEgeL4f9yYelWnXubtxGr2t3/wpbK
	zDmdh6InoEqmsTI1/iWwoo5e662XX8vZFbRa7oH6c2HzpnhTtQNSV9v7EApFLwTFqtM
	Qc/QCvZdohiVcbheXiEI81QkwaMl4yx6GdFHYCEA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018272751762-0834a5c5-5732-4332-a2fd-1b733834051b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 5b7e122f1d66c709dadeb03603dfdcc778a90ef197082863fcb6849286522794
Date: Sat, 6 Aug 2022 09:20:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.06-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659777652
