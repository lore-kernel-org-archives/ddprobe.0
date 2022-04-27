Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B2177B
	for <ddprobe@lists.linux.dev>; Wed, 27 Apr 2022 14:33:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651070038;
	h=To:Subject:From:Message-Id:Date;
	bh=MCuGtg9TusTo9Ty/cPV8m8Qh9A75VHSMRSWPtrZexds=;
	b=Dl/nMj9Xk9aE+34gBu67GaC3/2VgjXwTGRZZcR2uSYXjDVT2gvEOlRnGz5gIj8mj
	2g74FDazec4r/fm2FBqnCZy1mRs2nbBsOgRIx8A85kro82vEXMwy/cjjDLp9JvgOv1v
	S9/D9wkZ8wuSXSa7YhnAMfLuozuTJyHUT0Bf3rZA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651070038;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=MCuGtg9TusTo9Ty/cPV8m8Qh9A75VHSMRSWPtrZexds=;
	b=ClSZ6DBTSJMY8dFq8mneYD4LF2B8nlUnJiFiUwtW5OwS9rE9GyoCTqE+fzDozXoZ
	uGtXGyuqjQ1ra5XHaTVOE+5wXVAm23j/KbDXn4UtZDO5BQnwgX1cLqG28BlToU3SjPr
	iC7j4GlCU765/XDOAne7KkC3JDmzXIFOD14yOZqI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101806b717109-707b41ab-21f1-4489-8081-6147a9964fcc-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: f263338f73b85966beba928dd730e47e44c01599348271b07ed8b91bd9e35fa5
Date: Wed, 27 Apr 2022 14:33:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.27-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651070038
