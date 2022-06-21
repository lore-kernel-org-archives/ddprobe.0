Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 083A2EA4
	for <ddprobe@lists.linux.dev>; Tue, 21 Jun 2022 09:01:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655802119;
	h=To:Subject:From:Message-Id:Date;
	bh=n+xd3oDhqHOL5u7Hn7BD2CsZ1x37TZm0ztO+R4BiHp8=;
	b=ENDJh2lFExKZ/J2l3f/3DJhUGXYdKIzYlwZjvji//uilkz7uWpQhZEhiULdt4yLg
	TwCzyvdIpP5XrW0BhCmlA1bBCz6bbTVJ7MCnVkpY1xsh4xdxVfTBrUDKICU+kAfkVVK
	8ENzab8EkXhbhYzY8GpWKNrXCis6O3x+aUKXKobs=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655802119;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=n+xd3oDhqHOL5u7Hn7BD2CsZ1x37TZm0ztO+R4BiHp8=;
	b=jFj78nCXtjjUCk3qq1ycE2hFNqGqP4v0awVdUKHyCUCBdRtDdrW8OFED1+yCef+K
	otGR70QZP3YgthOFWvrqLXH3y8cI7ly+OkfeAoCTN9bXz50MrIHG6VL5AN3MnCzVStj
	tM9GmRZq4IPtH70LGzDKCgZwwl3eGGEHMnrxUDus=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181857f4477-0188a736-5deb-4b85-bcc3-bf6f8101cee6-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: e4d6bfa8539f8629f9ad96a5439c0e5bfcbe0ed72687c9539e62a17e19916681
Date: Tue, 21 Jun 2022 09:01:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.21-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655802119
