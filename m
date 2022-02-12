Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B9DFA19B
	for <ddprobe@lists.linux.dev>; Sat, 12 Feb 2022 09:20:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1644657636;
	h=To:Subject:From:Message-Id:Date;
	bh=LdaaalEqwff8JPOO5yzLtwy3tsoudE3yNRw/4D9ecYc=;
	b=C6Bo6awewqbKnFHGr3hTuY7jAjt+t7GQD2yor/LYZjmI4LZ43Uw7yDp5gBmb+w9X
	vg1+4gDuJBmGMRYYOEBm4394QFggdK6ATHPv3dGfj0fqsohgpZLqdpeEk0n7buASrtH
	Xm5yx5I6PzL84FGh/g5NP2iyxJKo6qUbASKpTSUM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1644657636;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=LdaaalEqwff8JPOO5yzLtwy3tsoudE3yNRw/4D9ecYc=;
	b=l4eGHbUqMR7SRZYXvYzk1vlohRrJExhP1HbJQZL5g9uV8KmzxZ1ZXQ0XtjKgjGfb
	HdGIOeMgDSxRRpN0HbdsXC6V3OkfLhIbmmM2bOrIdN0PUMr2Z8oaCUElusYC1e5BzxN
	NO1/9NF/Us9XB1Pa9FMM2GS27qWb3nK5XI0rBjpo=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017eed3bf300-ee091b62-8349-42fa-9d8c-1dd2de46cdb8-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: d66f05c2a3d6c22687c0c100964c866724aa96ca94c45177ea61c338c4bf38c7
Date: Sat, 12 Feb 2022 09:20:36 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.12-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1644657635
