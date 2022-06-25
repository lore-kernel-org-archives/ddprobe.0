Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B5EF7C
	for <ddprobe@lists.linux.dev>; Sat, 25 Jun 2022 21:46:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656193612;
	h=To:Subject:From:Message-Id:Date;
	bh=flubHr6YhHDiEdGtPYOWrSDOrW8BWfBNR+9Q3UGLoBY=;
	b=Gtl3xZtpEC6GxOpOY1gPVunUu9tufZ2rSKx7pj8rwn70D4ipnWQUkux3R9n72Ylo
	SeQA2c5uSy5Hg7UeA6dtiMkXb0kf13ycWHmVmCl6J+RSHOgDytLeEMzi4/2leM9VkkF
	daNz7fCKcsSON/fNhRVzlCbHYTEGxkOS8Yf9h51g=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656193612;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=flubHr6YhHDiEdGtPYOWrSDOrW8BWfBNR+9Q3UGLoBY=;
	b=erp0xUuEbdMxFIOt4nP1IigjozEuqUyzGs99hM/czn+e7MfOEBNg7sdKMQozVqGx
	sPRM7a4oCwyUe74rvFlNTHqslHlQcNR6i1Oo7MSft7OhFAr7QvjjK6t0o2EUXpusvl5
	VTv2cGdOYiFDgJR/kn0dr4uqsdnAxSECKvX6KTlc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101819cd4fa1b-a9460001-e15d-4916-920b-3cd49904b779-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 6c50125a70dd3a01acbbe145383f6d385630d0979b1e45b9d550f067b1505682
Date: Sat, 25 Jun 2022 21:46:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.25-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656193612
