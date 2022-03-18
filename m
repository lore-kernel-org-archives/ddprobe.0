Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5AAD56444
	for <ddprobe@lists.linux.dev>; Fri, 18 Mar 2022 23:56:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647647785;
	h=To:Subject:From:Message-Id:Date;
	bh=sG91VXRfBrdaTd61Hq7DctlGspeG8qcWTIm3OMHukKU=;
	b=YIw8Ej/7ifgJxlgr1D/BxptimoJikhPD1tM8xMzZZkod09h6o5kRWzNBIcJB3QKv
	Fgq4wA18lJfEpqWLGJz7B+0D6efIZafyLHywuZpplxWy1rclE/xC91AKZvaE1wj9jwB
	oSnCtbz6TJYRcdpJv+umbVG+KDMN0q31uLed+KPI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647647785;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=sG91VXRfBrdaTd61Hq7DctlGspeG8qcWTIm3OMHukKU=;
	b=Qa9RWJr6YDSeuMsoDJJB94XC1olQux0rNF4ZbYrww0rM5gHVYCMemPI3EeA1CvhA
	aTBBQtrfdn8zWc+l1Y2wEEtq4UV2kCiby99AirS49Jgja1nYMF7Wx/D/Kwln6QnRhSJ
	oMSqGVW0zRNm8HaDowMW7vId3NAgeycnr2TG1lQA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f9f75ffa9-e6910284-0386-435c-a0d3-f9b1c3eb0efd-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 4281d86538dd566d59afef5f2b39a5cfe4ca0588f0a2216d52ba7d3cf55d59d3
Date: Fri, 18 Mar 2022 23:56:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.18-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647647784
