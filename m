Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F2E7B2C80
	for <ddprobe@lists.linux.dev>; Thu, 19 May 2022 20:37:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1652992679;
	h=To:Subject:From:Message-Id:Date;
	bh=Br85a5qxy4UrB0j422DtzlO3IzbYyP2HTYngsGx/dXA=;
	b=BD5m0FAnXMR5qubPzH/J2nG0YRXfB+l6ifS1Oix5uT45Dks0hd0D5FYGYAweQnI+
	3mJTt8yu7KoWmz2mRSwGAh3I3jLjHrwJ4+oGx8l54e8pnXN0byuMlFz8R1DjfDUSr4J
	xcLSdiI1ubiR1UYIL9dCXXTjBPmaa5JXE/Lm5O5E=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652992679;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Br85a5qxy4UrB0j422DtzlO3IzbYyP2HTYngsGx/dXA=;
	b=FfDhprKLe3WtoF8Fjt84wAJgu8ObxnhDYYipwHZjqY31NA/ltqjxHmh6ZxXfRdkj
	72BIaPmbDg5DwUz/mp+uq5svVOkRgFaevAuMhbdUiSaeLQEOpLK8OhmEXsPojnFehWO
	rjUeFR213aSgpfp8zMZdtlHMiYHBgacYsesNPPuE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180de0a9d66-cdbb3624-8311-4ea0-b02d-9cf3addc41f9-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 932331fe4f75d4788a8875b5177ff81bb915c991d0b2f18eb443f7e0036ed418
Date: Thu, 19 May 2022 20:37:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.19-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652992679
