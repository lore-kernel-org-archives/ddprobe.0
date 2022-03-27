Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 43D0D17C0
	for <ddprobe@lists.linux.dev>; Sun, 27 Mar 2022 10:27:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648376878;
	h=To:Subject:From:Message-Id:Date;
	bh=RaZ9Vh59YM1i+KGMrdVOb3wQptg0gp2COp2wyANW3qY=;
	b=V/FU6z8BFMf68SlFiuG3ek2pSzOPHY7WNWSAmmSV7jEjbfWtgu9Xnc0D2lOrn4aD
	jZG7M3u+GvC7mCpKTtAElrynlGR72+a3gR+ltoyE6IAHAMhQnwycSYdq1Zw17jrN1sf
	us40vbn09Rzc2jq2lMPWXCpu6yS6Tfqme5QPnPLs=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648376878;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=RaZ9Vh59YM1i+KGMrdVOb3wQptg0gp2COp2wyANW3qY=;
	b=SMle1jJpYN8r6PWwQbXtY5K0t/B7LW8IjCx+zS1uCnexDsHMhHU9BF8HAaHsF2d3
	e8VLF/9++IiaTaqpwDelUUaidbHPEXRY8oGen0nRJ3bZVaqFnYTvwyFD4+9BUWCAGFe
	qecwo7yddzbqG1iOWBNSvfzrqVVzrsiKluT5I80g=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fcaeb150b-61c8a00e-23f8-4249-b8a3-81ab27be70fb-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 987adbee480f60f0880216add9e052c75b9d3f9df7998ccf9804e0958e3e01e2
Date: Sun, 27 Mar 2022 10:27:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.27-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648376878
