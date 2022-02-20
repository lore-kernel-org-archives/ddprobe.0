Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7C29E181
	for <ddprobe@lists.linux.dev>; Sun, 20 Feb 2022 16:46:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645375584;
	h=To:Subject:From:Message-Id:Date;
	bh=o4voVpDcGzQRoZuGro9vooeprw2dLHTRzErM1VyQv7o=;
	b=gDzbdRW/6CsBj2sgeg8d8PQqCoJ5iXbgnyGWHTZARLlVl9bb7x26RZPiQbrvCBkl
	DVs7CM/srQYDjz8mF4q3d2lkN7GPVo6JPCJ257VWmUQW1ATcwWhp8wvas27vmmw0isI
	Ha9ykUG+1QVh8GB96K7YNs1KVbsy1IxfGUVST594=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645375584;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=o4voVpDcGzQRoZuGro9vooeprw2dLHTRzErM1VyQv7o=;
	b=FS6CUsMUd631VSh7BU60OfybtX2Qud4CzWXdjWo5IGG4UKNyTi/a6oWa7PQD6N8h
	Byi/S+c6+0UyZhSi1q+oso0z5eityuIcumZuhXky+iSrBYekvdCLuABHdAReEtGz5Tt
	q37hqRnxCHqOq0LUuSgXuKzSlD/BU0D2fCn/0e6U=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f1806fa1f-76f66335-5500-4f49-a938-1bec5451678e-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 7100002f45f3c66fc64deb9ee92d31b69a6e3fdf70fcd51958f9070435f1876d
Date: Sun, 20 Feb 2022 16:46:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.20-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645375584
