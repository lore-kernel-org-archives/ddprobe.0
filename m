Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5981C7F
	for <ddprobe@lists.linux.dev>; Wed,  3 Aug 2022 02:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659495052;
	h=To:Subject:From:Message-Id:Date;
	bh=dOA04fDLO+/RkrAuh3dpIEmhDAdUHR+o3PajNmOIbIs=;
	b=ai+5nQZ9ZgJzCJiMGDEw+66xza4XnyPnOWWI71R3bP1SmWFo3ui3XEc7ZLdmtFH5
	vRlIF85dOozhd2HKq2JD5/Lp4pC/QfZCRrNe3B4LMGQIc7VGkKQi+5zfKfLs1VAzMXZ
	l/jNRF5f0XliEHJqn1m2AJX7DObrEpyWrvr4h3Ok=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659495052;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=dOA04fDLO+/RkrAuh3dpIEmhDAdUHR+o3PajNmOIbIs=;
	b=FgZ5+VIFBX+Ltfv6PplRTk2PBbJMIUZTc3NF5OKdZiZB821VqRkCQ2jSaCnq9SV1
	U3D92EskGL6RyzFLfPMYLyXowvqVdV4TtPQtJnPUlxA+/O2DC6+n0SBn8DSy21HophB
	4qbVFFBwyPuJjGyvQbNxliaJBTXIcO5x7/VMihhQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182619cf53d-873e480b-f39b-4000-9687-217bd8790b4a-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 0eac2423701fe5c45cb801772c44b2a36d57fbfcdcf325b63d01e7dd9359a8a8
Date: Wed, 3 Aug 2022 02:50:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.03-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659495052
