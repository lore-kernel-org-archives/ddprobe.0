Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EEEEC7F
	for <ddprobe@lists.linux.dev>; Tue,  2 Aug 2022 20:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659470453;
	h=To:Subject:From:Message-Id:Date;
	bh=eyVGP3pwoLhiO2ceEwc8gPVAJ86RRwCYIMLiN7cDrdk=;
	b=db3/BmBhdX4hgmFtW7FYIP7KGhR06akZuBz1v0sQTUSt6oD3fU+AAsMIsGZaAxEM
	LPGw94DQgZKR4/dCm1MpN+dmq/6I4Tic8G9eUATZMzJwaqN1th6xQPFS9vnrWztCPaR
	znVn+fKOdNKHhU7Lwd8/ZKjkucce5R34ufI3WNXo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659470453;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=eyVGP3pwoLhiO2ceEwc8gPVAJ86RRwCYIMLiN7cDrdk=;
	b=gJg5wLBRWj71F22wVYN3P7rDNGMXol0k1QFq2oGeRZzE3xzyjkcW4QFg8GiqL5Na
	skkznteBBxwhlEIFzXGMqUUZrJbrUVRHPa9wI2APSIFQ1V6kGbQ9DvZ82rM5T59+HaD
	fvspY2yUxKjP/1R2L6I3ymRWxS/JhGi9m9ri+vDQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182602597ba-2745e7a4-e535-4ee9-a92c-4d5f395ac1a8-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 6485c66551cb1e999299af426379cffcd508c7e52647d416d9f823ef553f895d
Date: Tue, 2 Aug 2022 20:00:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.02-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659470452
