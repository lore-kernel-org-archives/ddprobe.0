Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3BCB719A
	for <ddprobe@lists.linux.dev>; Sun, 26 Jun 2022 03:56:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656215812;
	h=To:Subject:From:Message-Id:Date;
	bh=0Ngt7l0Fi7reuj1i4qVIf7CxoibWfkElcsRXQ6Ln4og=;
	b=lmyXpYYcBt7ELDdnxFgKaPBe5Ps8XrEERdVY1RjXFaYnm4prM5xd/6Jw4oRGXQYj
	dN3e497Zfued2jbKitESaHXvK6vxZDAMsM9P3B1RjI64JETo0sjdSRLvdBntIXFqnyO
	0UVzMV2I04iz/fSnmlAjrAZDF/BV4c4g/Qg+GllA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656215812;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=0Ngt7l0Fi7reuj1i4qVIf7CxoibWfkElcsRXQ6Ln4og=;
	b=j0idnrzovIgU7ooOZnA6f6mIS0ZfOYc5GNqrpyH2ULH0ucXDwiplT9bUNXUnLtM2
	KaROS6KapRdFfmRvddJlizOO3yr0c+PxHIBjxUvGKwCE9OqwtV02EDh5gzlRh39xAqQ
	ob/mluTurFebceRhcMbKZe3UhMKnb5uF1j0cwzOM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101819e27b92a-4d95b15e-6bee-4fb0-ab1c-29674c109f70-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 8f4c4cd58597943dbf1348ce8d26b0e041617e240bb948f9274cc7033d3d419d
Date: Sun, 26 Jun 2022 03:56:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.26-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656215812
