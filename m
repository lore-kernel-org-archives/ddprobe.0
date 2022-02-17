Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 842D91FD3
	for <ddprobe@lists.linux.dev>; Thu, 17 Feb 2022 21:36:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645133785;
	h=To:Subject:From:Message-Id:Date;
	bh=kGunf0QgJBsYUSIz99dCMhlxakV1cJShQ8xKv/Cp4u4=;
	b=bcuESbp4pDE8DbX2j5ZbD+8DfjOVDdhXU+br6F/5mKzHpeukjQsFRWj1QIIAAqQz
	xnNua5QCBWxn2waYqFz9Vfh7xi81ETir3RtZDTcpeZ760rpqtKkdTLQipZ3w4vYu6tY
	r8mXWyVx+yBlWe5JOKDRBa4uUvJhmptC9PQKjf0M=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645133785;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=kGunf0QgJBsYUSIz99dCMhlxakV1cJShQ8xKv/Cp4u4=;
	b=JBCAVZcHMJ8p9Wy73lRgmbUZ4mdWJ3CDxSBktAGe3mfSC9VJGiMQXizf2XGdGxyV
	T5xGV2afDyGfYk+fiCT/84HSH9r0hHHEByDXFxQmSLeflXlLjaa6lDFgb6yzJuKoTut
	2SO+zWsQu6rPiEywK7vENhd9pexIkXZCEgsita6g=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f099d66ec-3dc9c256-8751-4aba-8891-19d75c225615-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 4b1db581faaa3ea3cdf9476ea54268faea8767c3e29ea5fc1cbf31f1c8a1442c
Date: Thu, 17 Feb 2022 21:36:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.17-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645133784
