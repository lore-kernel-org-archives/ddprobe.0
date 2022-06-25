Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1AEE87A
	for <ddprobe@lists.linux.dev>; Sat, 25 Jun 2022 08:16:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656145012;
	h=To:Subject:From:Message-Id:Date;
	bh=n1+eH1asECAgnHXlZ2R1/llfwuZKu8M2WRpn8dZ9E/I=;
	b=Elol1U7xiVRO58ZsSMSHQ7Z3ySKeQvVEdHurWXgMXIa+1xXN4jMB/lYfBxDXw+km
	4RxIl4RtFSbxuN+GBimPHQlPho5IArwP7goi8UlP9KsFwbOMFmbTMhblcnaj5/HXlSK
	yqvEPkaL7siqpvv/orCPIbdEUTbguyo8WSIJSOHY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656145012;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=n1+eH1asECAgnHXlZ2R1/llfwuZKu8M2WRpn8dZ9E/I=;
	b=GCJKqu3E1Mr7a8gupuKzHbn+i6PuUIEL/uk8Nf3b9wBbh13GiNMWW7D5apGT5gGP
	pp0r00V+p7+YFSuQN0pcUUle9wLcDKlfsNN/Rs7U5n8bGq94zO1BdJthT5UsRUWC7D8
	MbsxAVmsVL1Ry0EbKYDmxPIk6FYhB9oXkpdGNYhs=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018199ef6637-2fd95fd2-ab2b-4de2-a940-d0b679bfde4a-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 7c2bb1e08421eb18f5556f4e925e7dc4ecf7475b63befd8943f1c74af118f1da
Date: Sat, 25 Jun 2022 08:16:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.25-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656145012
