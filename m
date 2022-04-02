Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 254BD7C
	for <ddprobe@lists.linux.dev>; Sat,  2 Apr 2022 18:36:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648924618;
	h=To:Subject:From:Message-Id:Date;
	bh=umQoTWxuw6jcqcYImqRtCbO/G0ubFlXvEIfenNrj+RE=;
	b=BypEZI+M+EQurfjSxqwnp+C2MkYGXFGEa9E7HAd5f0ERFTkN1oIJX579RqJZqATX
	XadBiOZzsSIsUlzdgPWR26ZVwIgNYh3ZQ4Hdk1dDT4SIj5vVtViNtrmw3PGO2LUpNaD
	emVf4ObsMy6csANRSRZVoJ+ozAF/zuz5lHezVnj0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648924618;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=umQoTWxuw6jcqcYImqRtCbO/G0ubFlXvEIfenNrj+RE=;
	b=ab5zFrLJp+Z+PcyBXowFbe8w2+N+tmeAE47xO+ss3GlQ9AA+EvW5dfBs2BybljcF
	EG4k4j+BW7WOrPTH6JTdz9QoMJuUpnNRPDxSa7o1kwacXRIX1odLhOLjvYWnx1/3Mrk
	SG8OtXay6Y23+1OtpALGVgcKE3OKjslKZuClH+y8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017feb90edf6-5b0ac38b-e851-4a5b-bb4c-4b062c02ae96-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: c277144fbfcc7c4426e6964f245ec160b65cff06b2b265f7aea6d00e52070e35
Date: Sat, 2 Apr 2022 18:36:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.02-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648924618
