Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5ABF67ED
	for <ddprobe@lists.linux.dev>; Tue, 22 Mar 2022 03:16:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647918985;
	h=To:Subject:From:Message-Id:Date;
	bh=+Z9f/mDypOh5SeTLyGbYICma5YJbL/nIz7xz4YMzlVg=;
	b=DsgqCbgbYZqi9cX0Py1sNZ5jO8YqjNRSsSeEXusiRmFcZE1OeaSUriOR2n2Z6A83
	oqHULj17DMn8W12h16Nz0kHwJCs5IxecGW7bHSqDNeKH5jto1EaooWYRquLHS6ByNlf
	v8KaSCUiK8OKE23PYb66IZtFkdBU+PUWNemBKFMw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647918985;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=+Z9f/mDypOh5SeTLyGbYICma5YJbL/nIz7xz4YMzlVg=;
	b=RSSaBsWwjaQ66NT4b0P6KOzqZu5t2ZeR10pJMv1qdGnN1LhJhiyG/Ou9UiOtXOUy
	esTELk6UvzmWckYA5cvG+MaCIvhmNHWdN3rM0nX+VOlKSXs91XrHPzU47ZB2IMQamlu
	7CP8fisVZ6JdMdkdrOEuDLo3ohr0RdpRjSOyHJpc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fafa02e2e-8bf1a7f1-8fdf-4c4e-a252-de467015a7f7-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 5948b095f6a214d543b0be7ad721fc7de95607a48ec2f3698f60b40a1bedc685
Date: Tue, 22 Mar 2022 03:16:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.22-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647918984
