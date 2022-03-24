Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E8E6F1B93
	for <ddprobe@lists.linux.dev>; Thu, 24 Mar 2022 08:56:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648112218;
	h=To:Subject:From:Message-Id:Date;
	bh=ZPqPEIoB6w5uWwL2tO5jgsI9rVx7/thsdto7ObuKKjQ=;
	b=Ol14NtMayhUCrS+eZ23rCDSS+LOPieVkfYXXMw249/JZeKkX9VsEcztn89sxYobA
	0ydkRuAjA1ICQJSCmZkqp9SoNBGYRiDLclEBRTq1LwuITzpud8yDPdUqwPI4gvUZF0B
	1MkGcNkZk64UjrekogSx6Wu3xD/a9AFhulAnmeLI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648112218;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=ZPqPEIoB6w5uWwL2tO5jgsI9rVx7/thsdto7ObuKKjQ=;
	b=TdoTOyQWurBtm76Jy8iEpwSdafz3m8C3RAkXO62AMGaGpzz3E6yoEZrSuz8qQqEk
	mLDGqMVEHAzWBMyq9YIcLJv0dUOTyEUgqvHrdwaP4LuVzdojXo3cN3cmP5aHy6Cy/E2
	EL7VsnkdMW+gAaiqkpEv1fqu1Fm42p8o/CyWtVkQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fbb24b0b1-68dbc11f-9b33-4069-a452-2e83db58d58c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 5b4b700cdd3d36bd940b0c2ba48376f3d8029d1d921d75da993200553464c497
Date: Thu, 24 Mar 2022 08:56:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.24-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648112218
