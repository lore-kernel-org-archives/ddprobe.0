Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8437D7B
	for <ddprobe@lists.linux.dev>; Sun, 27 Feb 2022 10:51:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645959084;
	h=To:Subject:From:Message-Id:Date;
	bh=+SU2zrOnDo9XQB1lVuZyONWl3R8ON55nuPxN3zBQQeM=;
	b=mi5yWqo9R/MGeboPnHSx8J/2seIARygB6C6oD8I/y665qnA3ch7j76Ns9D0MUzBh
	NOb5QWYiFBqVxHq+QIXW6skTJRYw2vH2LN5nrhjtKMdxW6/IlwXXnclhAVhm0+smAIs
	rjGOSgA7dnmu2WO6lpxraWt2JfQkOFzQwhkAtJTM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645959084;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=+SU2zrOnDo9XQB1lVuZyONWl3R8ON55nuPxN3zBQQeM=;
	b=bwMZ7bclRvvdagfLoSsJAzc19eVSmbpwonbdvki1WVLZ+FuuGqmAGbIZugEdhbPh
	q0j8LeF5ITS5aywLwgNFZBERDa06szMEK2Kv7q0qjpr0kIt4AazHqtOQzSmYCMbxedq
	sgwC3nSGGhPuUqtNrswOjXNnGV+Pi65OPZOcsLTQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f3ace7afc-b946e94c-61fd-433e-a2d6-5cd12aded609-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 905e56b10196346e5fd57573ea4414618f2306715a3ca5dd5d6dcbe8e76e3443
Date: Sun, 27 Feb 2022 10:51:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.27-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645959084
