Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C29467ED
	for <ddprobe@lists.linux.dev>; Tue, 22 Mar 2022 04:26:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647923185;
	h=To:Subject:From:Message-Id:Date;
	bh=ve+q3Al+hSBZTc2/LhVwb9k9DcB6TyqPl/rRUXL2JNA=;
	b=V6X4vAwR2RqQcaX9rCjy2WEI6E5nUcz7JayLfH+b3OOsjxMC+qc+zfhAeG0+xXiZ
	eCG6lhd/28epfFUEp1Lh0QDmyeX9mIXeAcEHfRCUrZNitP8SazVsHMWE7JotMhX7DsH
	cbtktas4wfip9XuVFwAo8U3QksUkhWq1KyBo1824=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647923185;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=ve+q3Al+hSBZTc2/LhVwb9k9DcB6TyqPl/rRUXL2JNA=;
	b=IhAs4SDlmaXBucq9R083BbCGFPdMbIW1VkZPx7iv6aSzOufIg+CkvUdGHWCE7xby
	XrDCFRdwoCRbMdLGKxUMgmySXUYgvIUzseOEQEKBMgKZ3YZwkQHKYXRdkcjpHCqccUe
	9yNA8aKPakcxOVpvLEQLQGQzEX5ONrOSgB1RczSc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fafe044a5-cce471d9-469b-41f3-8461-fa3fd7fb9a77-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 28f77b4008705f74cff9448d8558b0ac256b6bb3234ea59ddb89845c7e0bd878
Date: Tue, 22 Mar 2022 04:26:25 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.22-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647923184
