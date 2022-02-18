Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 550074F21
	for <ddprobe@lists.linux.dev>; Fri, 18 Feb 2022 23:51:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645228285;
	h=To:Subject:From:Message-Id:Date;
	bh=j4WqrgNNNi/o+PC2XcOM3HzPNwhkdICxKoOcM3OyuSA=;
	b=B/y0N1y5scp63UZkFNPqdaeN1a4E4mXzEOwFtnqYhzNNv9WaR32UmbhuQIrM39eo
	tZxtU77YoIF/sr0QMt4f25IU2bu1O8NCGcpTlvMKrUbhYEb+HiL230/agPSOeC8C8ff
	PHKATf8siW0S6jIfy9UUz9qYcyyyA87EDqARWpWQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645228285;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=j4WqrgNNNi/o+PC2XcOM3HzPNwhkdICxKoOcM3OyuSA=;
	b=CwM/bFiz12eIMOJC4smP3ejmn0Q82dxHjcQYVn7/W+Vy1m22ZEPi8RS3FoFaZtUS
	sIzxZmabK3pyJ1AI6cRaj35mZe0lG89oN+E8QFEo29ZVARvDfRUAu16kmSG+gRwKNXf
	Fw1xhlI8oTh85vXL/CzBxuUsqSXFcXfuq6pD1TkY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f0f3f5ba2-911f9c8d-ebc4-4486-ba51-2e5162f4c690-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a630e8379baf017c8a2f1eb14168b4945d40d4ee3c703caee5b2ec0b9eb4f791
Date: Fri, 18 Feb 2022 23:51:25 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.18-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645228284
