Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EEB91ECA
	for <ddprobe@lists.linux.dev>; Tue, 19 Apr 2022 09:22:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650360178;
	h=To:Subject:From:Message-Id:Date;
	bh=He7TR5K11J/4+s19eJ4q+hvSp9//lYmL/9QVbQCVzzg=;
	b=JVrjvqG87kez2iQh2smOA818OKbJTT6h7xUrIQFL/1MnnGpPvNXeEFbFbgN5PQL2
	ZgZMrDuSguiXJaiFImMtDVj7QjuvqPhhAu+AHckaz6XFECdwV6isB0JPVQzRGFYnQ4K
	TuydpB3stwHiKbsiZZgeiK2m6bMHeYyqUHZt+YM0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650360178;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=He7TR5K11J/4+s19eJ4q+hvSp9//lYmL/9QVbQCVzzg=;
	b=M/aclZxu6k6GZjgfhn48OhrkbX72mMFzfwKSE734/apuzigq8MwyCPX4S91C7Lj+
	33ouzE53jBqk3rM1qBAk17HamRcWDfpeucuMnhpE+0xCwogSZ24+wpykgvuLcZ7qb+k
	4i6K6sucU4HvZLs7vaHmt0IfQWnfrwMlKCndREkQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101804121d685-74817678-3043-4df9-8db8-140ac158d402-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 847b0ef255848525e20058eb742ae5000cb103e4a25cece92382a868545d399d
Date: Tue, 19 Apr 2022 09:22:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.19-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650360178
