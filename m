Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D05E5124
	for <ddprobe@lists.linux.dev>; Sat, 19 Feb 2022 07:56:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645257384;
	h=To:Subject:From:Message-Id:Date;
	bh=6Sa5u9Qj2jVrd5h128XG9w0QDSCULfMkLu5I5h26PUM=;
	b=C8uQE4Rp6PyMpPaCjBxM+ZyvhTF8MTUst0uGCA0+fKRVSUH9q2PesDfF6JOlP0Cc
	fjj+oGEvzsTOGU9oIS/tNqDpRWEz9mTuOH4EpyylKIaRFU+mBfgUioaS7Ia7Roc2vLH
	KUUAsxsbU2sQ2dLnzvf1rLeGETkVshZNqobDgyuY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645257384;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=6Sa5u9Qj2jVrd5h128XG9w0QDSCULfMkLu5I5h26PUM=;
	b=lUbr0zQPimgp3mru3gGyVd4K2iXRmWkQKgFC9AlIBKimj8S/OkuS9B4oKOrF7mVq
	5bho3YWMPPUxAKHxOQenkwtR7QzRSfu0Dwjkb9v6uEhB1T6iYtFsMPehz4XgJ8y/KT4
	+BGy6got+hQERu40KBm9+d+wR9MiAJ31pxDsY4pM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f10fb6330-76c333df-63c5-4bd9-afe2-3f605bf903a6-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 38a88c261d777c9f25b53677950a67c578d1b71a661a4a327294c1e2efd9086a
Date: Sat, 19 Feb 2022 07:56:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.19-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645257384
