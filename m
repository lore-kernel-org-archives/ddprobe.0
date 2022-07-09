Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B3E37E9
	for <ddprobe@lists.linux.dev>; Sat,  9 Jul 2022 01:26:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657330012;
	h=To:Subject:From:Message-Id:Date;
	bh=J8J/xoCA4okyR4DrRN+LdMKnS1tL4rL9Xbv9L453pXE=;
	b=eEFbMWohRnHw0HsZDwsaj4Fl8DvRSxM+ungAQaRMIRY2f6ZIDu42hbhqS/vfc8KO
	zKZdGoasXg8oFwiBWq4wskaHg+CQBC0fdXieEdHAmpiCjhFJwqo/fAobyOYmJjOsxIf
	f6eJIkWsHjqw7rJT2EJikajkoxPxSJAd5EoIG51g=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657330012;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=J8J/xoCA4okyR4DrRN+LdMKnS1tL4rL9Xbv9L453pXE=;
	b=coXKZLsNRr0yiuS26yH9oinjfeizb+SVe/JQbUVrzTk6hPivQxgmYHDPUhD9STDM
	C+lBKNDDSwF25cWcv5QfbLSlJjR3GvOIRLV2C7mQA0YMweWc/ZnS7M0W3luQikyHKNI
	qj+WIQIwC86nvRxscEGxgcdbqXmy9MTiYcPp0hmA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181e09110b9-c1bf2bf6-8e05-4a28-a020-98398c80f3f4-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 765f3485eec355d5e670cd047c68bf73d138d441c176b2eb7aae30573b5155fa
Date: Sat, 9 Jul 2022 01:26:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.09-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657330012
