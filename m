Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23C522F33
	for <ddprobe@lists.linux.dev>; Mon, 11 Jul 2022 21:16:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657574212;
	h=To:Subject:From:Message-Id:Date;
	bh=xkbxNrP4LcQe+coIFy8K9Yuo39giWLj/hIfNlJs4qY4=;
	b=HH7IvjL3DRo7aOBkimx5CpXGlOBhynoHOvuq686k3h1oVml7KIQ8dsYSqemFoU0/
	/Q6/6uaDZdyVEr9ZfBNhNpwbVM7xr2+3JfueB86bcGeZZMywgGe02oZtUgUpihs0imB
	Mtfh7mfTwArtS/EHvdPgxl9HlVFvXDwXpVAKLV00=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657574212;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=xkbxNrP4LcQe+coIFy8K9Yuo39giWLj/hIfNlJs4qY4=;
	b=By0z54YCsfDnAiV+MJCHWvaVyw9P29x4cJDFJkPdWpynSwygUOdNRpWRuwsekjhb
	d6e2NmN1zxTrx5ZeVuWFe2qoJzMoJqf5RL85j3bbbQFrA8LTq/gtm9lYJeW2DiSAghb
	VLdj+7QEFLnZOu1vQy1wG9RxGY/sQ3qWH0nA55wQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181ef1f42d5-6cf657aa-45ee-4c55-8bbf-9b4f8e70f385-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 8a5b94559d0f442fef5552f8b53771c0b44fc7e805aa53d6d980cc39f55c5a87
Date: Mon, 11 Jul 2022 21:16:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.11-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657574212
