Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29A467E9
	for <ddprobe@lists.linux.dev>; Thu, 30 Jun 2022 01:46:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656553612;
	h=To:Subject:From:Message-Id:Date;
	bh=DyBddKaTZupQOrfQQYwXOKScgcxxxw1n97FOgL3AN60=;
	b=DMGxW+7wufH8L9XdcuHjEqVJ9erjgY2TU8LrH2sFGdrGQrh7jZiiKtO11vG705UO
	W9BbFWxryTXDxaKk5Wg9EJ1eGxnKCoFOpM3EeJB+OqXIKIz4Vo6bKvsWWaqDhfZPsNd
	wu7WGrcb0b8IgCjV298cpOKMPDiuZrRkYAvzWZr4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656553612;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=DyBddKaTZupQOrfQQYwXOKScgcxxxw1n97FOgL3AN60=;
	b=eb3zngObfq6NqwMudvvvIuCFzOldf7+ZckIBWZhFQAF+vZpFhSYC/ns7Y0NjB8yG
	W1byBztekgqDG+4BEPVwlgXuq470TdlxdMRv6elEeBy+EM3+ceuQ+iX2TdlMlMehwWq
	aBn9o5+b86ETjkVCJ1X10nHc7zDu3dw/bc9dWVlw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181b24a23d3-17ecc9c6-6df0-42b5-bdab-9f68c3443f57-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 639a9bb873da5013825cb2586b7eaf6b2c98055d8009c39f388070aaf9e79aa2
Date: Thu, 30 Jun 2022 01:46:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.30-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656553612
