Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DC5231B73
	for <ddprobe@lists.linux.dev>; Mon, 14 Mar 2022 15:56:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647273385;
	h=To:Subject:From:Message-Id:Date;
	bh=BjKGjFqgrlLlFjlWAeL5h6cglcKaioPwn/ba1Zurtbw=;
	b=AdOLbWEFl00krJz42zOgzZwTXeOEmky94M2nw+/2NvoBVfS8oQET1UajNgcR9jG2
	ct4mAzA46vy/ZwqQyr6XvXaQj1qQz6s9OwLC3luFgc2+BmdHMs8gxmArwOctLs7Gng2
	MKh341s+Jpdc0n0FqtVaLaUrL6XMMAXCrPB1DdIw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647273385;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=BjKGjFqgrlLlFjlWAeL5h6cglcKaioPwn/ba1Zurtbw=;
	b=dZsSiTHmGi47YeM5Ur9ZWubV4cl17KLQmnEPi+hiBCF9YQXyqP5XGtDF1eNcIE02
	R5L1HZDzhlb/B2rcsLQf7lagqJei5gq8t3XyKM/cs0DRa2b17wBYuqLpQ88u6f5iU6f
	6GZ5sjioXRbzwpq+r0TAJ//u18r2eZ+qyAaR6A6U=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f89251b5b-b0e43153-ffea-49ec-8ef3-35cd0c3aefff-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b2a3d3ec0d7a42305e220a8254413af2b3cb97a7a77a5d02c5e85e85729fa119
Date: Mon, 14 Mar 2022 15:56:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.14-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647273384
