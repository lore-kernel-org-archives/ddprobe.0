Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2766E20E5
	for <ddprobe@lists.linux.dev>; Tue, 29 Mar 2022 10:10:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648548658;
	h=To:Subject:From:Message-Id:Date;
	bh=flCpzn4ISwQa0kwjsAHwRbxFd0M2Gg18kTJhTTVYVOs=;
	b=RF/vSCvLmCZvERS5HVEtLniS1VSuQz5ezwkbHwTxnoea6Lz88emjjIlq7jr9oVDp
	fc0/iho4ogDiYCKvXK8iiOtPucdp8iEZQBCUcig0iqlteotW/vGYzNAs+mA9A/Gss7m
	+zQnzcEBAYPJbbevnmDg6m2CE/QgK3NfS+eBMGPQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648548658;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=flCpzn4ISwQa0kwjsAHwRbxFd0M2Gg18kTJhTTVYVOs=;
	b=eCUlKLm8lUgCmByF0YXUjseAX4YOUvYxXi5LmI+59sWXk4i5GtWj9AZP67rtOL9R
	XlBbVAnjnUdgR1DuIQY9bBS7LJv4wtn/5oCFIcqiy29bJRhOLTvM9Fye1PeUpn1STcH
	+uo8am7+Dl9PAjqbhbw9hSbxsg1B+ZjKJSY6mhAM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fd5283c50-079f3ed0-aaf1-46cc-8430-2066eba0bfdf-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 6c44b2bf3bd4ded2cfd997bba4dd44f972285e5bfc3c5dd7125f8e8787fa2405
Date: Tue, 29 Mar 2022 10:10:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.29-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648548658
