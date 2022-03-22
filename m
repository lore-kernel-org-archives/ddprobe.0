Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 75E8BA54
	for <ddprobe@lists.linux.dev>; Tue, 22 Mar 2022 10:46:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647945984;
	h=To:Subject:From:Message-Id:Date;
	bh=MZ0lhFW4z6c9e6IiSrgXPIem0RHXfNB3vQUiXZUWZ4A=;
	b=CjBHKuOrV4dQPgzqYLyR1ba7uxKRrMOctCehX2aOAPN8U9ktJbkaxxuRKiBJosJZ
	3j6KfNGiF+QS2bDixFW1ujdyQaIlacr5b+wwAbyU+5/Wa5C42LySZzuJloz6jQ2BMqy
	CRSKT/khBb/ROYIM+q4EOryASMzK6WzTCFHB9DBM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647945984;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=MZ0lhFW4z6c9e6IiSrgXPIem0RHXfNB3vQUiXZUWZ4A=;
	b=dVxQ8Tsp7h87aJDwT00JByiG093h28zff1AFb16zXtTbZ+AoHIrO4CnQWzhFHcDl
	H+CZHUNJvxKXaU6A7rR6d1tT6mDRje18LB3/69ii90wd/h/xDNAsfLA0usamZMBDgOz
	1BhLyV+M0rK6eRpcfnC9FpO1TFpPAkVvfdlxnmEo=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fb13c2ae1-f3444d3b-07a3-4781-ad2d-29ee5fda1fed-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 2e38187a58c5ceede60e9c1fbff84beeb42dbae3898dffc1577ed9817462846b
Date: Tue, 22 Mar 2022 10:46:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.22-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647945984
