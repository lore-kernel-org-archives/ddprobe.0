Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 15CB7139E
	for <ddprobe@lists.linux.dev>; Thu, 26 May 2022 14:56:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653576959;
	h=To:Subject:From:Message-Id:Date;
	bh=yOTelJ3NyrXEEMoEB9Lhu52WxkDLhSrRmu2DbwKM1jw=;
	b=dheiOTN+8NWMfpAaM0gRfKdJal+auHU4fiPh5/6oQIRtny8wpxMJDmt9FdWqxS2I
	pB+A8d2S1sWfFwF0HzCJy83AgcgtVNA3IEOBG50Kk76s4dwZbvvk1Nr7w6rPjAK7VIg
	g4AlNDxRgOHQNOcp1p4DFg/uWRZsHq3lE0jszgSw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653576959;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=yOTelJ3NyrXEEMoEB9Lhu52WxkDLhSrRmu2DbwKM1jw=;
	b=Ele8RMX/7hymXz+1SeoJJ30wRuAd2Tx2GBnRCzfKZEoVJzjpKfg1Fg/S7NwW8w7O
	FdeDBP7yBeINhqVcqa766DTSsUW7Dpe6NliIlodIf5gjTYGG2Y6DeJcKR1sPGd5o9ce
	Xrfk6nfHVrV46zjEfZluHOvrqavVPyk0WOgKrDHg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018100de054d-1ae8ebb7-f164-4ef9-a268-aa0ae450d918-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a6cf920d93a56086c50a935248312e112de14a498b648f55c818ae5067e3bb56
Date: Thu, 26 May 2022 14:55:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.26-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653576959
