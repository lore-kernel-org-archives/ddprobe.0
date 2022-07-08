Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 090B736F
	for <ddprobe@lists.linux.dev>; Fri,  8 Jul 2022 04:46:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657255612;
	h=To:Subject:From:Message-Id:Date;
	bh=wRyACut4zpsGdHDd/s2at4uSzrxB6y7KbQLeTUdLjh4=;
	b=T1QeGgNK1u57D2qoIFQDjbiAUOc1lAO0DKTg1KOE4Jmx9brxTjB212p6e/ByG6Jj
	YpVyOvmVrJ6gYlvMHh1Zw+GCezu0mHKzBQ9DQ4gwymbpmxJKZVlJSrc6ToIPujf7nki
	jWrDZ2gYdfrjUc2nuXeMN5C1NfcnGW6TotHkzvIg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657255612;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=wRyACut4zpsGdHDd/s2at4uSzrxB6y7KbQLeTUdLjh4=;
	b=h84P/jj/KqW9ceBnDvUh8M8kAEhkO9VfF/OllLKIbirkRojiavzEyp9tl4vIB/3w
	Yj5bKxpX8YU6f3lwGoiRcsnMS09DeQQLC4/AK1ORSjs8nl9Xg2eXcKoo3Fl42VLvKGy
	i0ZIw0H4DT/bJ/7I0DKQFq1d9X7K5HtyfCkPL0ec=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181dc21cf7d-5fdaa785-e3a4-480e-96e5-1ccaf1e2007a-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: db2ff7143fdba65f3c18cc39b6979167e6646d1e01795a16c76b840316b1a202
Date: Fri, 8 Jul 2022 04:46:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.08-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657255612
