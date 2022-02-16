Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6BDFE2917
	for <ddprobe@lists.linux.dev>; Wed, 16 Feb 2022 16:11:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645027884;
	h=To:Subject:From:Message-Id:Date;
	bh=r7NPkST20IylVpEsoEq9UmPr6an+ZMwLhSdW8PMmEms=;
	b=b/QZhO9BOfxqRCv3eYVTSXaz3QRnEPVLmyt5f3aW+e0e5BsHkWUaofB/m44ciUDd
	rrwFKkO8YsPV3+BElSTYjNrb9tghozKhcgIMJ059wMyakXJKW7Xeoqv7wO/85oLLW5Z
	u5B3f/DDqWEAlZ2zxBJkFp32fHAyCEOeh62i8Jhs=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645027884;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=r7NPkST20IylVpEsoEq9UmPr6an+ZMwLhSdW8PMmEms=;
	b=FRiPTWEj/KiKu1FoK/WIPVn9OI3VAIQ4dKmOplhxPH2YggjQQnZICmby+oW6Sdlg
	2+K1slhy6EpYfkDERFSGVcKSbNXUYIQjXdjVHeXehkgwDqdL2B+4BmJGXl4fQx6av7t
	aZEoteDMq+McTzd7/VLSDwBkBvcva0ccUf7OX5qM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f034d7ed0-616c7596-e917-41e4-a7f4-088fd5b82581-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a13be51d1edef6ea0848d921c4372314f9a1dff60e861d0baa0661f58cd5e153
Date: Wed, 16 Feb 2022 16:11:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.16-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645027884
