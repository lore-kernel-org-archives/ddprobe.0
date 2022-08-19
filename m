Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 71322610C
	for <ddprobe@lists.linux.dev>; Fri, 19 Aug 2022 23:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660953052;
	h=To:Subject:From:Message-Id:Date;
	bh=0gRzewx0syfeUXQvDaUhVlU9nyqcwPzCZIyRZdI9jN4=;
	b=cTLOPsy/VrnLIirGl+wQrysEIhwYweELAPLObxsAtpSyCRfL5cC7QZ/88x3tfGyS
	8IQfrwi0SlbACBzm/kc+nG5LT2d/VQCM1igbczbiK3puW3L0rqEUv4d/J+EhDmjSyWG
	Mh2BIJ9f6wZIiN+1naPvdfXY5+aBJAuuxUbEMLT8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660953052;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=0gRzewx0syfeUXQvDaUhVlU9nyqcwPzCZIyRZdI9jN4=;
	b=UR7iXoLoN0KxDvIO54FglLxnpdMu9/1yn/bNTzfERhOIpbZlI8FNLOwzgeyNXnwb
	Nyfz+oxVB05Dv8ZrTTaagaIe8yGkkg9rqexR8HdFQumMG6BJ9hrQnutnOAknfLaADSN
	sdb35tIkO+oABc7SoMT4VaptEmvdVa6tL46GMNgU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182b8844576-e1ab4f73-b030-4efd-94d6-75f458b50604-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 2f0aecf409b42a438e2cab19d4efb08d724d62e210564fb4c65a8fa945180f2e
Date: Fri, 19 Aug 2022 23:50:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.19-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660953052
