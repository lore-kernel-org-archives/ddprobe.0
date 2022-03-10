Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 909E87A
	for <ddprobe@lists.linux.dev>; Thu, 10 Mar 2022 13:16:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646918184;
	h=To:Subject:From:Message-Id:Date;
	bh=s+cQxmnWdVEcah5Np9eIsN2lHsxc9jwhwb1XlVXqI7Q=;
	b=jOxgV8sx2L45rpzBUDZz5QeWzDmEAabptXtbWVfcdw96j2WOJ8+xqRfYFnV6o7NZ
	9rVx/0SnR8hVDz/QTBGjLV04KwUx3bF4yVdRBwlLNnKLRJA059HGUj2UmZlHBc9FD54
	8BrwHNx9CMUEsJoiPg7C0R629t6hGZbh7EST4kWI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646918184;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=s+cQxmnWdVEcah5Np9eIsN2lHsxc9jwhwb1XlVXqI7Q=;
	b=XMRbxy6ylgMr2KIR+MJ5RUyYXVuR8aAxUw/UEZOYg/orkK5WQ/P9ANm5vX1f65ZS
	AwDgpxFFE02H1GsjHjZp6SFe4esXmInndDYp+XCoLtaOB6wWy0bp4lOUHFxJe1M7Qed
	KV3yCgmhkNCpFFH1UEEcVvUpZTakgeN6i0R0vIrc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f73f92f44-fbfa5fef-4f8a-4018-a3fe-9f64a11739c7-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: f629f4104a8e1ad8540d3742d912967006393966e1cb589019c89e0d2b4eeffb
Date: Thu, 10 Mar 2022 13:16:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.10-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646918184
