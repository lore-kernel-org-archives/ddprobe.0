Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B922A6ABC
	for <ddprobe@lists.linux.dev>; Thu, 24 Feb 2022 23:06:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645743985;
	h=To:Subject:From:Message-Id:Date;
	bh=sqDUcCyK+EQ+3CO/+r4UAy/kjq/m1pXjAY1gvUga2JA=;
	b=eomd9G/nOFjKNKpjCP4pyCt2ixk6mpAnlVj/BkalJLNxXmEUy6t2vFpAGDm1Y24i
	Y+v5G384mGmWcUbEZFln5EyajkF0/jPhA4syeK7L/+8ayJ2kndiAk/THPordnYgWL58
	0ocCu5UYUCiPQRknDU8Bbj6rRddgfboEct0IgwH8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645743985;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=sqDUcCyK+EQ+3CO/+r4UAy/kjq/m1pXjAY1gvUga2JA=;
	b=VtAvCzF8TA6BTrzPQUMX2vdBg0lOhtXMhY4R96BBaARLSuspjleoE7Cp9FI7NruN
	ZjjX7s8SvoWqOmuzyrcp67skqd22hKsJXt9X7PMS8iQyZpiaCXIqaY0C6HMa27xIyAv
	de9dYjQskDRtL0Wc4bCxFL99c4qDdeiFXDGPVIDY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f2dfc506e-db402002-8090-4234-9305-c28bcf6f85a6-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 99af63d1a184571c6bcf51c5742893b8a10ad28ada07c287f5640a99d7c0c1fe
Date: Thu, 24 Feb 2022 23:06:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.24-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645743984
