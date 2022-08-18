Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5BB6C7C
	for <ddprobe@lists.linux.dev>; Thu, 18 Aug 2022 09:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660813252;
	h=To:Subject:From:Message-Id:Date;
	bh=jkDWTCLrs6ZFwslaPEEt4hVM09wOX8+GvZ9Yx819qXM=;
	b=DLEIQeaZJSo4iHbEd/S1lifLyFA1Q5u6zQEuZYVmSwnE7YRWpqMatadxqVB2kmu/
	1YMDcIFEB2T8TqdNUF6RQw6IV1jsAUFis3k06fFA+KtkSXkOkyZJmlRRH+O/qOWVRZF
	Pzc0E5SAqCTeF/r/qM1DsBCf8/89Nca4B+WDtlvk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660813252;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=jkDWTCLrs6ZFwslaPEEt4hVM09wOX8+GvZ9Yx819qXM=;
	b=a271o32Lrmz+pHbfCrp+eZwfeaiXtnVZTnf5XgmH2U7RHVs5CN8+K03QetAQdeoY
	kdl7yLWEwc9LWRwI1AQiZMunsINVeGKR8+4UyHDAMGtzKhOqYlCT1mywrZaXx6oI7fQ
	uqxnG7cS80NFxbXCBNHSsxHSFGSLWkOEO3LRHcPU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182b02f17ff-bea1c1bc-910a-42d6-b2a4-1c37ed46c481-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 8dc406f76755ff0ea61143c6dd479b3114ba26b7dbb4abb02c51833573134f5d
Date: Thu, 18 Aug 2022 09:00:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.18-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660813252
