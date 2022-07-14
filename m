Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F28F192
	for <ddprobe@lists.linux.dev>; Thu, 14 Jul 2022 00:36:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657759012;
	h=To:Subject:From:Message-Id:Date;
	bh=pdJXUhZrMbqY2dSGxYsSL6AdkYfhZVzC+C2faPpPeE8=;
	b=axJuLNM807i6ztL0jK1nWalvswcb4oKKnQjoERi+ECqcEGyHHx/kFHapggo8RK2i
	1SHlJFsbnm6wCeOvJfpzGXJFOxXOnYDhLIb268pf8EXZp621AxlYHNxO2HxiOGB4now
	wkILCFYMW4Tk7q7mxWkOY1K5tU+1rnJuPjwSIfz4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657759012;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=pdJXUhZrMbqY2dSGxYsSL6AdkYfhZVzC+C2faPpPeE8=;
	b=EVnMEzfqRRcHWEEZtdgUNHeTwFgYEGYv/HEaoykJTQEFCBNFVV5lLGo4q/fNf3wQ
	0o7l1pbeymw2Z9lvhPsmZz+WpgSz5s6QCgtJciGC0Qc5CCoveP45VI+g1HIZ39jMsre
	vZLEfOlGl/vG1m7Yd+z21gLlBMqXMVoT5ajzSEt4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181fa23160c-06292ece-8b0d-428f-ba00-f3e61c5395b7-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 3b335fe39a83e101eae64d17a1b48d19060e0e48b2741d7775486792243e95af
Date: Thu, 14 Jul 2022 00:36:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.14-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657759012
