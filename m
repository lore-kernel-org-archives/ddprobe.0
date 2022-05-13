Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 47F9A7A
	for <ddprobe@lists.linux.dev>; Fri, 13 May 2022 00:06:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1652400359;
	h=To:Subject:From:Message-Id:Date;
	bh=dW5h0F9jjTmuHq0pih8YahOueaHFq4LofIL38cJHio4=;
	b=hnTgs3J6gN2ng/KK0cBdH9kTRfPi9G3aFHIFUpuYqix8ywQOrT73/Hz4O4zKmtC0
	xsNbLj2/+5zFYrlI8qzJ44BZ4Oztd1jF6Msmq6o2NJwKd0Cyg99BiYoabFWAzvjbrf/
	HtGvAId6XDNOoUUvzUPRoWXBS1sY/Vaa/ShpSnC0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652400359;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=dW5h0F9jjTmuHq0pih8YahOueaHFq4LofIL38cJHio4=;
	b=eB5yvFGoe7AZ2JxWOI3UzPuGY6JR6pnVhZMASjDPAickYfP/jsLV3MU5ttbJ8pG/
	ns5QB7FTAaefvzj+MFbLqPzFRxauEj5ZLhKHJb/2yVY2vD7No0XWSevXuNXJzNgp5zE
	FywY1PHQzZ7SNJKZurJceWGu2ElPU63VGVMynzcs=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180babc8774-a1fa01ed-97c6-47fd-9a67-c9cbbb350687-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 93b07def920c5f758c8afcc73e7b9a9a73c790ab8eb5c8cc3fa415682f98c2a1
Date: Fri, 13 May 2022 00:05:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.13-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652400359
