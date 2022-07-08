Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E5753D89
	for <ddprobe@lists.linux.dev>; Fri,  8 Jul 2022 21:36:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657316212;
	h=To:Subject:From:Message-Id:Date;
	bh=p2/upp7pYtmwM7miQ2vAYNCvawnHuDNy2dyWizY0PXs=;
	b=IOzjUdYJ33w7yc264qT4IGOarcRrTi9WUD2YVB+/pcIwLs5urXYaZvMq3Xv02yjJ
	2k/I+T6D2LYXdP+ZqDYQ+Wgoqi9d8Q3a/u0p1lPm4xL4XUaFYnw8jlPxdMDIlmVXlqS
	ULS/iEqDxWmg/pSrVvaBezO3/uO1xpA7kRekPMls=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657316212;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=p2/upp7pYtmwM7miQ2vAYNCvawnHuDNy2dyWizY0PXs=;
	b=cqMNKwi/0TdQ1zM6tK7r7cnF4zAY1g+Ej2ALD6F+PuaEkI2wO0MP724XGC890yeg
	vS/dDfrbjfPngRgewYVJdPOZP7nQLxPgt3FNxIrYuKk6uydLDRL8Rk1aVMrIBUdK8JI
	STFJxf9t3jXu6XRxA4RVccBqI6tDMHiKMI5qXzYo=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181dfbe7e7f-f803c3bd-782d-4a75-880d-de253792cacc-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: cbad2ac65327047b0fee61771ddbc3a6b141b238bf17265069131c51bac73f19
Date: Fri, 8 Jul 2022 21:36:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.08-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657316212
