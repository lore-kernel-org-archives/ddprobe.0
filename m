Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AF5D6A35
	for <ddprobe@lists.linux.dev>; Mon, 14 Feb 2022 18:30:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1644863459;
	h=To:Subject:From:Message-Id:Date;
	bh=NhQ6qAhUyDTYgtIzj030PySLETsEB+7dvtoJRAOpwNc=;
	b=BG7B9v9Pjm4uf1wBBi6l85FWtPkSu4c4eS4+0/o4YFOG3qAJ89uiHF65KQH9mkwS
	RvEYvajIBriDAiV5e27d+bhKNgnHFCuqIHcpImxB3kKbOLxCc3DTFDB4Bn69lPaog2a
	M2H7PABWm/ofpkHiNxHocP19ZdQJcmk1GOSZRQK0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1644863459;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=NhQ6qAhUyDTYgtIzj030PySLETsEB+7dvtoJRAOpwNc=;
	b=MoNTJQEsZ+o6mrVa1/Xq3YPUPEKN70r45NO8wMFznm4GHlA//BV0AU7YK5rLrs0u
	0QlbMmq0DZjAeWYRqWTPL/mUwVHRSH+t0YEH8C6dwVIH82Yn+awnW1iARAxsgIy2Ptq
	RGnURuBXjTKlZ0HSDBDQ8YlrAG/sCupZBl3PITUA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017ef9808d79-1618af26-6e31-4efe-a4e1-c1198b9b57f6-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: c457a78924e0ebf442d64d295c2e77e848f1e977ca9bbf8211c0d0dbd154bfbb
Date: Mon, 14 Feb 2022 18:30:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.14-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1644863458
