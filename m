Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AA8B77E
	for <ddprobe@lists.linux.dev>; Mon, 14 Mar 2022 08:16:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647245785;
	h=To:Subject:From:Message-Id:Date;
	bh=QvU3U/+5jUb2PAbqe6S1pXjIpOkZnKHcdxiUSuqpUxA=;
	b=djaJP91MJBuixjrc+TkXi7WotBSBr4v/F8/12kVdkkH1V5jc+Be3nlRkROaeoe0a
	aoxcmPkbW/jDT779tbQUoDhi433qe25jHojJLM1QSV/W0h+JCctfFfXMVTTnP4rK1rr
	GJJQVfQdVU7vROrMCjNKYwQrRdM9FkbNQi3vqWMk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647245785;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=QvU3U/+5jUb2PAbqe6S1pXjIpOkZnKHcdxiUSuqpUxA=;
	b=cP8VDFJBgSCEg4iRlWaP5T7Ovi6tTxBc+QLfWL+T0PZTfurG89jUs7Fklt4X/Hij
	DqkGFdD91KHqdtXW3DFkqEe+bPovLzqSAUvwQngt5x4FTdyg4GCTXCd6j0XC4Z6VLat
	WyxvdAYB6oFm+jhIZbIZl/ckqZptmZQz94OQNi1c=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f877ff6ae-312bc016-6347-4e17-9727-3b945a2c9c0d-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 1320f203998e32b43b61c2b13c0bb7c3f37f11e5b29747e7c42e08144a75181d
Date: Mon, 14 Mar 2022 08:16:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.14-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647245784
