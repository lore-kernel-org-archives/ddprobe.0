Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 60C481578
	for <ddprobe@lists.linux.dev>; Tue, 15 Feb 2022 16:26:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1644942384;
	h=To:Subject:From:Message-Id:Date;
	bh=yeRXyfWVj2E9Z5oV6/IclBFy0k0xW0oe2kB9cTDypWU=;
	b=hSsnY8sXuqSF9xQknGsmXYNvUnpRzpfwStUN6NV85L89CqUxd58QcX46P6XwRUqk
	Ei5qZF4aLLCanUhh9NOrhTrMOZfkFrwMnY4U77J1G0CqmdcCXRhcOr5+hmrTKQIW70u
	3Zm6SSU5bUp7xiGzFlaCPAzdXhKV+lRHZjasSjGk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1644942384;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=yeRXyfWVj2E9Z5oV6/IclBFy0k0xW0oe2kB9cTDypWU=;
	b=QatBr8prvjLXX5scECcVGr5G7k/7JtYkvZRYdCyQiMwqD9XeXUPGHSjt9hK+xorQ
	+THnYQ9xdcwC+04tuaMJLJdtuvDGFF1DgCdq0BwBmDmJEDduX09G05CS/qXYwQOV7mA
	Xwi8fiOU/r7RadiOXBfh6KRHxBRQApeL+dQoB13U=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017efe34de7c-e3b61b96-e37a-4d95-949a-459b19437fc4-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ee399b5e81dad2b24460e8be7a89c6f52edba853699ddbaf7fd6f483d4f2ed66
Date: Tue, 15 Feb 2022 16:26:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.15-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1644942384
