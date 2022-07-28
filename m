Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6E72A10E8
	for <ddprobe@lists.linux.dev>; Thu, 28 Jul 2022 04:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658982052;
	h=To:Subject:From:Message-Id:Date;
	bh=J9ABrozEzXdryP3XsIWBTIl/NEixSuCPMRll6HLNlrI=;
	b=dVNfZpGaJPFQfPnGRF+NK2QobnSuhMkzQHgXkGoqTLPW9n6OXnMubu0VGz55ZUrt
	pQgQ/US//HLopNecEAoldpT7wF7kt1bsnQyp4ZILlJz1n12UvD2rf8353czWcA58hFW
	NbXBcg1D4CJyd4nueyuH8wIXnY87t14E3KyHt0ac=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658982052;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=J9ABrozEzXdryP3XsIWBTIl/NEixSuCPMRll6HLNlrI=;
	b=bRPCEclvhwL4VsR0ysZZQBGh+rlwNU7/feVM2mRJBPa0xC3Ls3vQUOU6alA13git
	qyw5VKYIvZ48tVz0pbHUhd4HvzFLxe1pyALleLHwI1qMIIbmgf/fHfOgENnnpN77CIG
	5UnikIfTBGqq6wPNCK5mXGlpUGq4D58QrSqZ7w+4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182430932c2-24dbc789-689f-4786-be17-785b298093de-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: e3e93c73c13982fe289fa947c8264b64a9690b3ad3bff4dcd955b70561b0cc21
Date: Thu, 28 Jul 2022 04:20:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.28-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658982052
