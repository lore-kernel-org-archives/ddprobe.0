Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EBBFE7B
	for <ddprobe@lists.linux.dev>; Sat, 18 Jun 2022 08:56:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655542619;
	h=To:Subject:From:Message-Id:Date;
	bh=erFbDNNXcywN2UxpECTRE5ulu8gWHvPjMKaAxmeP6YA=;
	b=ffOKgw5ktlfy9sH+jwumwpZHDDDpL3p1SBH2ZVXnms5nTf7RNp60frlJ+dNfR/SX
	2EbCv3tJBkFWzS6S7JGfaWnp1InKLAH8Q3Gz7w4X2Dh177dN7hcHqjGlWOUqv/fmCF2
	34bYXEgPcug5LburfnesTw0TaDcUUEFmoZkr/hPM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655542619;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=erFbDNNXcywN2UxpECTRE5ulu8gWHvPjMKaAxmeP6YA=;
	b=YVMaC20ngnbKuz4+LZYdSaqNQx5dW+j1147khWpo7NoUvZ33eFnFpQIy9l/6ZyIi
	tSTwusAkgQSk8fLcD+tm5i9Cpv7Lq7gnRYkN/8lagfxrYahnWlI4p15YsrGya37dzsE
	CvileoLDplN3wL0d8DTzVAMUB09wAnuzW9JJV64k=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018176079c58-70265382-005c-4c38-acc3-ad443ad808d3-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: d31e475a0519cb50315ee4a8188912f7b49fb60c6ca5c16e58c0597379c8d23f
Date: Sat, 18 Jun 2022 08:56:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.18-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655542619
