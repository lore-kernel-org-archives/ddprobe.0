Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22BF233C1
	for <ddprobe@lists.linux.dev>; Fri, 24 Jun 2022 15:46:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656085612;
	h=To:Subject:From:Message-Id:Date;
	bh=FTg8B7ygV7mBDmuA4GeAdH403YTYMkHCBO+LY92JHa8=;
	b=PSqMigMzDevpZbKWklymwNNyfSpV/3XJUpKhCyU6iJ0ccVBReYmzCi5aped5Eo1n
	4dw62rfI3t2p6igBr2VIFCZZRjgvSCvydUWYNDr5shujDg7WJFg/JLfCYsFY4RYduxd
	rbYCeXuM2L01TG8qlJ07st5MgZ8sbOyaiyGTWOn0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656085612;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=FTg8B7ygV7mBDmuA4GeAdH403YTYMkHCBO+LY92JHa8=;
	b=Z563BZj+pDdxyYQSjmQvvXw8lMtEdBUUr3P5Hu0mpOKgMN0eQ7URzkpRCnu2WDr3
	CuXqOpxqWvRmIhpFCnlgzedDyO+caarbnZMD1CBjjK0RSc3mtD0l9+q3UsH5/JhDGSQ
	wjOEcmV3dFsBaEFXFa1qBNUWYqD5PFr7ud9K8c3c=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018196650702-760996f8-7ace-4d75-91dd-c706b99b6c0d-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 841eaf64901f8ca9df48e3f0fd3996c7bf3cf15b7662a2bcb93df4803949ad16
Date: Fri, 24 Jun 2022 15:46:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.24-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656085612
