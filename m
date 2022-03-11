Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 537937E
	for <ddprobe@lists.linux.dev>; Fri, 11 Mar 2022 04:31:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646973084;
	h=To:Subject:From:Message-Id:Date;
	bh=HgkNcKjjWjVu/vYUHOk6df1AB+rvapVh/T0FjA5xLVM=;
	b=HHQTrXDtRN05oR/bsQ3ajOuVCWeGfm7cgreFuPgUikaiXQANGRLBr9OLs/4I4BAI
	JI0awhH1+938sXDrcvjX9EFnvTp9HQHWb1GaqEzXtHqDcRnUX5eMhTc69sfaR3lc65J
	tzBS+evxUZn2Yqn0EnxKSUBiN8O9t8Oi7Mr+fOss=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646973084;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=HgkNcKjjWjVu/vYUHOk6df1AB+rvapVh/T0FjA5xLVM=;
	b=Esr15m9AqD40e7OIvn7bxpu8OBCpKSslcwJSQYl5wo7K/LTXsvPGbCCQ4mpgKDkb
	cHI/nzRN0xdeg32XvyVqitrEYSR7U+jFB1knha3FpLFjogscAuo/1KTTC3Qc+vlcKnA
	J0tJctGnYWVpSrizzOIWIh0oCzKb5H0CqG9XzQKQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f773ee444-e8844e59-68d5-4bf5-9089-6190b0c3de32-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 85dbf1a39848419d72f4e228ae05e2a898ad6efff7166c9e6f13e41238088140
Date: Fri, 11 Mar 2022 04:31:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.11-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646973084
