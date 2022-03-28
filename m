Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 076E14366
	for <ddprobe@lists.linux.dev>; Mon, 28 Mar 2022 18:38:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648492738;
	h=To:Subject:From:Message-Id:Date;
	bh=nZQJUo81QK5jJSqh1iEKjIsgs8yyW9mz5vZwIdCnPcM=;
	b=Hm1GW0D0hJ0q4k9c4MXNCX9PGYujrN0r2KK9YwPOlbsRF/Hr+3aOV1At89PnBki9
	tNapHWqgKQ9TqURRLzyMd8iAGU6xSQ03oe8ZwT4ceJfoaS3Doju+VOp3Mt99UK0ny//
	4VHA4t1IFIECQjHo3Z7EwqbJC6XlnNO1Ssu+HJ84=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648492738;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=nZQJUo81QK5jJSqh1iEKjIsgs8yyW9mz5vZwIdCnPcM=;
	b=kJK+k09BRJnaTzMpstu1eWhDG4iPiKchQW4KMQKoog256dVbN9o/e7lbrR9E7fGS
	jGbsRSKfaaAbbWf5nPUxedB9Omxcse42nGU713dkRKkhQXQ3I5i9iPAWSLq6cKuE2k4
	EIGyMylVg17ymO7xu7T/WPW000g4vSVAG4znM93s=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fd1d2f721-2490a243-8b66-4ff2-bf63-de1aca7afe26-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: cb834d279d6bd7e2f7e7f5907339964cd1d1005af6a8070004d596b492148820
Date: Mon, 28 Mar 2022 18:38:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.28-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648492738
