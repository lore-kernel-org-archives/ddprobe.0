Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4AB827A
	for <ddprobe@lists.linux.dev>; Thu, 28 Jul 2022 17:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659027652;
	h=To:Subject:From:Message-Id:Date;
	bh=/fjKsiJckH0BFqKCuHA4VHxogKkYfeGv4p31hS/M1OU=;
	b=g80eYoUb4conpIaTBFoPgsottYQRdV6BN1jdTXyFv1LzUGsYR6em30XfG75mdFil
	dgbv9HXxSoAMNQpBImtvQamp8yfptNAjfkSUIoTTEr1HVU8eUKOrgZq3WwJQO85yvGE
	KAJWXKcLV+Mc8Tc5YusQQgwEV+adZOqRwMMmR9w0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659027652;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=/fjKsiJckH0BFqKCuHA4VHxogKkYfeGv4p31hS/M1OU=;
	b=U+W30+Swa5GdqNaLKyuYFLSDp46ay76bS2tDJ780J1rWgH9B4feVn2g8wHnb+SfP
	gn18hEQ3YBwC1HV++T90JQBf28YZBdSSIEm4F4WISlHRfJm3XcPXn3nvYToMznhtoQi
	5cK0JtyqKD+PGghdFYgkeWqcQEcc7D3H20kSJ930=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018245c0ffeb-df2cfdd7-ce81-40a7-b785-99073aab2b2f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b532a8b83d8393b1b12c853baf1494048132d3820ea78776e233db940c7384e2
Date: Thu, 28 Jul 2022 17:00:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.28-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659027652
