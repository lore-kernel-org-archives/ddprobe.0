Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ABCE13B21
	for <ddprobe@lists.linux.dev>; Sat, 26 Feb 2022 11:01:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645873285;
	h=To:Subject:From:Message-Id:Date;
	bh=F+GetDdoB+LHXzIzBTva4DJnPolwOo9m33GILdNfSf0=;
	b=On7iDk4JkCGBOJhTrPlSUdNzLcvnnrY1XGSV65xzgJ1ZP9G2U0PhGulrQBgl9dA5
	4i+CWFqCBjKGVQEni2Yv4Pf6xs4VFn8FEgA1JcRH51XE6llDW29aPs3tGZXA4UnwecG
	wXQA4eCpls2egN8A1hJ3+7lcph/4/B0sSRJsG6LY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645873285;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=F+GetDdoB+LHXzIzBTva4DJnPolwOo9m33GILdNfSf0=;
	b=KTBRxom+H0iTq58zMrwRLIsq8zEd0wi3Xz48uvq3LIWwRtIuUQ4f7MEUwp/CR7MN
	EZxN24wSJ4jrJTwwLvh79Q8yfMkOSTvTAHJSFqOp+4AJLiUytCN64SYOs8wg9aN93TZ
	+ayt9rf9cOerraifTx+p8lgK9wmlKHGZa9HS8beE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f35b14693-372e102c-2f0f-45d9-988c-ee1a4fdc1f3f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: db4bd0f73cf21fe927a6b346f3d24e4341c18cd800a9bfcac808484c8d3ae164
Date: Sat, 26 Feb 2022 11:01:25 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.26-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645873284
