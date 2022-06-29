Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B43F62A
	for <ddprobe@lists.linux.dev>; Wed, 29 Jun 2022 05:36:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656481012;
	h=To:Subject:From:Message-Id:Date;
	bh=iAGpv94XeNoRbbPUDavizd9F8KP8Gd/GwdlF3H6XR8Y=;
	b=FDQMGINozmvUelIYdXcJ//p9trIpZ5tMNJrNj5aIHsEj/CYn4ESgu+bjGsCSdXAA
	j2gcNGYqlEn6TlHDAbkg9q/AQv8b5jV8kuKA73OiDUlbmQMQ6A0Ku6Xk2ep0G14tS3j
	zd0JnqAV4/zqEtoc9xwF8uk/WATTwpa5Hgt720wY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656481012;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=iAGpv94XeNoRbbPUDavizd9F8KP8Gd/GwdlF3H6XR8Y=;
	b=iTDCt7DCH9QCgL1U3UX20dfZNpsn9oUtpw8x26yRw1lM/wDgG08sH3pwACigpBOM
	AozLMk9OgWqWitPSuQEsT8FV4PztHyGNYmFeAbSY7M3oKqj3cP3/Aew4GazXe54HIij
	PjQa/rHQ5BhDMR0jU2b8i5x5SR2KSgxu0hgAZnVc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181adf65a75-775a871f-885e-4fe3-ba7a-1ee7e6d93e2c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 7a09047f0d2cbf634a3627ca495d7ca4a20ad831a645bef642236ca80b0860ba
Date: Wed, 29 Jun 2022 05:36:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.29-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656481012
