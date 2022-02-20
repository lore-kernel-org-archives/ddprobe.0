Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5E0445EA4
	for <ddprobe@lists.linux.dev>; Sun, 20 Feb 2022 18:21:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645381284;
	h=To:Subject:From:Message-Id:Date;
	bh=PqannCEedgog64TcSLrHcfDnRXh8754Yllu1avrSGsM=;
	b=FdHgIBC6oddhgZSXtLrY9sdNSEj5jNrpyfX4Xfq/aBsoo9bZR8c2BkgF0hZ/mqeX
	61i5JTrhUw+medNPbIdJ6BYQbd2KGqjTh+zn/u7UPoSWdZPwdKArwvsEnJMTUlNDpi4
	TwO6joccJ8vOJfv1cu0Nb5wh+YyD3FJaQaWDtfjw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645381284;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=PqannCEedgog64TcSLrHcfDnRXh8754Yllu1avrSGsM=;
	b=DuNs7SxFEwNGg9IfNINJhCRQuD84Wqzf5acF5MUcGF6rPKIhdK5Q4lzmFKYSwrX4
	+N8O+kGV/KSSAmo9ewhUzHyMyipXXA0DDixBFHjaxsEJRUXs+m1gklB5Braj2nO4DoA
	0ESwko7vLRBR5TZFnagMm7O3JlqHdlg/5tDHEaZ8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f185df397-457b23a6-4e84-4d66-98e1-5e3767d058ad-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b41fb55f0d77bc4c3f85cfcbbf991fd4d4fb3c582a19649342e8b0a4bc44dcff
Date: Sun, 20 Feb 2022 18:21:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.20-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645381284
