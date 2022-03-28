Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0F8F4182
	for <ddprobe@lists.linux.dev>; Mon, 28 Mar 2022 02:26:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648434418;
	h=To:Subject:From:Message-Id:Date;
	bh=AMjC64x2TqhY6ybkTthOCW2npqRjjpS4KY0x61bMQOY=;
	b=mg5tYK8ymDCsAIusiU1EjkzdaWNrJ+CQVoUVP2xGRsqlKgokBl6REXf/8KcflBfx
	pxiIZUsA5/It1D+vHvxroADA1Wt9PCayNshk28oJ7a1thRk+ZxEopfqb7Sx8ha6NNcr
	4YbkpvdN7f/uK88OXqEmUOsx7VtOBdpf+tLK9VSE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648434418;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=AMjC64x2TqhY6ybkTthOCW2npqRjjpS4KY0x61bMQOY=;
	b=PSe+5RZoRHJonfbaCJIJBEopvmUGRzBaHJrrnhq7D7uVgQsKh4NSiXqsHV0S5Aaj
	MiJfDYidxw0vZW0bb6Eql4ZIdQRaqW0hz9m5YnKUghvAy42uB7WZF4lt+zQiicGBpWh
	cHeeuiahbr9sCvBNabXTvcmn80B8SyqMvANs1yRY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fce591237-f83ba3bf-fd18-407f-85b6-3239d87924b0-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 0e0bbf72efddd60210a94d08ac700dee2d5b6fa2b75e777d6c35357dd04885a5
Date: Mon, 28 Mar 2022 02:26:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.28-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648434418
