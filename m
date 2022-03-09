Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AEED317C0
	for <ddprobe@lists.linux.dev>; Wed,  9 Mar 2022 09:46:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646819185;
	h=To:Subject:From:Message-Id:Date;
	bh=4oZd7CEXQoYjqrjHYsH1icSsqUtZwVmCX7qtb/vhRZI=;
	b=h6q0SM1V2G0pe4+f5NwK28ujHzHYd872ARNMvnzSTx6VQhOuSnFS4Ix32yMfAQcu
	sxkA4ErecLJ76aUJNufeZyKaKgv44RzzcZUk5g1qPA/eSt3+UT3uG7Lc6oiOjwH2TLc
	BXs+1jbCTC0U48hh7ND2j261rAkNfI9kihGqISoM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646819185;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=4oZd7CEXQoYjqrjHYsH1icSsqUtZwVmCX7qtb/vhRZI=;
	b=hSusNSgHr9GY7pasSIC3oPh4M7fB1J2TOupQxagbmtO8vu6B43/mgW4t0YtoB4yg
	8MfsdqGHiRb8HqttbIrKJCzWOddtYTatoNBYj4pZb6iD7yfdHSOOQgEQkC9d+fZ8aEp
	bqJ1PEhz6FP/gb8G9irawfInMMYxhf/m6yCjo6Lk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f6e129091-8a4dba82-917e-43ff-a28e-7e172efe900f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 51b6a6d64a3a450fbf5d4ca5e50b7eeec39634fb1ac9ee3ea213e991199d57c8
Date: Wed, 9 Mar 2022 09:46:25 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.09-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646819184
