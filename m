Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 631A57B
	for <ddprobe@lists.linux.dev>; Fri, 25 Feb 2022 07:16:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645773384;
	h=To:Subject:From:Message-Id:Date;
	bh=NCxkdfrRM05VDdQmo73glHnqBSKTeq/2xobkNVKfHyE=;
	b=Db89vgjU0sDgsA0O83kMSSp/0Ufg5kWj1/xnv9kciRL5yn5Q3darK8HGo87Gl055
	S+YUMQ+REyJhBVbgVIHA+cc4TDTfU2+j+txNwNpfDnz7oXjMXSzsd4BLzSv9j1Jop5y
	y8Z9trhqRtChT5A9WhkS5NEgGUJlxZU0C3r4Lpyo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645773384;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=NCxkdfrRM05VDdQmo73glHnqBSKTeq/2xobkNVKfHyE=;
	b=lpRWVTwWdzJ4/N+Y5AIfABE6naTGU9T7YiCHodHEA/TDxLR0YeUmSuVqKoEbVU/X
	tmXwIEBPkMPy5I9GEPooGHR+f3qqouqpeI5GGuHb3xLFbdEYf0Grl1yfm6HduqaZtYx
	jlH3a8JbiWPwhqwQ7hdLXnZqssl4rwGnM6cAbp7E=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f2fbcec5d-204eb4e2-78f0-4e70-83ec-40c2919d32b4-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: bbc14a9900365b3d8d043d12a8db8a457d939ed9ef87de778c06f6266a742cd5
Date: Fri, 25 Feb 2022 07:16:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.25-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645773384
