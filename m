Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 16A6CED1
	for <ddprobe@lists.linux.dev>; Sun, 10 Apr 2022 10:01:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1649584918;
	h=To:Subject:From:Message-Id:Date;
	bh=YYDIBtme84F78+zV1KYT61ULCq1h0a7gsHdhNsNf51k=;
	b=fxIJ8opgBvmYi51ybzNd8IBZkBWcYZSlGsn8uJc4hC/swaWzafImj3Y7o2fApwJg
	y0A+z4G/xqBhN7GZBIe9+Ze7v33ZBxJJ/CfKZtrJ/fo5Y4gjnLoMBImXKmS0Dxsq3Kh
	hMJavpXiNmMIuvDib5i/5RkvN3e5DO1yApyeTrdA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1649584918;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=YYDIBtme84F78+zV1KYT61ULCq1h0a7gsHdhNsNf51k=;
	b=fPzmKr2YHUiFvUJHpkZepPOVRjuYwzCrkfUE1HehbXAVsNOnw9s5Nxxhcbj9APEs
	NSBWzqLpG0dFz9yMv5FxpCTa9AJsCZO/TnNwmvPcSfcMA2cGIpkD+9x7XDy+R3GrZyF
	4caDw4dknCOEMkMJ8sa7HRNS4q5Snh0YULDKvz6I=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018012ec4f15-adea31d1-32e0-4cff-b7a2-b260efb72e47-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a69d49a104f7b2b3a5138f948ace7d63fe239e7669ceba3098eb271e54c62c86
Date: Sun, 10 Apr 2022 10:01:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.10-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1649584918
