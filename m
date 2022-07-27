Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 74561A3F
	for <ddprobe@lists.linux.dev>; Wed, 27 Jul 2022 06:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658902252;
	h=To:Subject:From:Message-Id:Date;
	bh=cXuyhmw1vaEQXCH5nktWGvFYnQgbvOg1dlMeswEZ58I=;
	b=NJGW+1JQVEmFdYeoJhGhafZ5aCXz1nqCS7AB00Atya+68yXdqaV2GJgh/0XG4Ppc
	ZFJbWs4fS9RgzJrEAXmCzrXHwktE8vOPeeFUOthuN0knRSwGeEZ30HcwIIpxNp9SiHR
	ZTGM5Ez6nTkBwm+GCN8hPWEIuJ1C43BzvsH8+mn8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658902252;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=cXuyhmw1vaEQXCH5nktWGvFYnQgbvOg1dlMeswEZ58I=;
	b=OT/yzBe27koEIVz+abxQgoU4v7/q0VSCt9qbRHbUYs5yxD2gkxt/5mDjVlQDvf5R
	vyLhAlYo1+5Oouy21rJvSoUUXEkbsXldweEAz6SCI09W0UcST+CvrT+fTc3jvPxvidV
	FH+dKGQs6VO3VI3ZjlKPMrWbkukYtGRigJ3MtFos=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101823e478c39-92112e6d-3d69-4e19-b279-9bd53f083793-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 2624f28b7ae77233c39801152edda998ada07fce86624375a67a0812f7f0fff3
Date: Wed, 27 Jul 2022 06:10:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.27-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658902252
