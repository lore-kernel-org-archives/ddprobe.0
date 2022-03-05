Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D688C7C
	for <ddprobe@lists.linux.dev>; Sat,  5 Mar 2022 12:56:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646484985;
	h=To:Subject:From:Message-Id:Date;
	bh=pRA2LZWc9oZfydjrUjRYmly++wkq0FUPDFYg6pT6ymI=;
	b=D94wuPN1DQ9ktM4RVnCWEs/J7w97ZKo5IUgy3X9agO2ZU8Rh7H4b9nw13wIYHZ/Z
	xOEdFGmfwqd3Lgo7hMbeAvh5os681jd47j1NrQgBBWr/e3N5e7NZIggQsAVgAuQgL81
	Q5WZ7ij4A71Vg8eCCz8dp3sv/fRRc+tDW+9InreE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646484985;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=pRA2LZWc9oZfydjrUjRYmly++wkq0FUPDFYg6pT6ymI=;
	b=kxWKzwjWV2qBvkSCVy/RTOkFLlxYXQSWhnekFKn175HrY8rESIApB8Bq8e4uiJCn
	gzp+nnIGI4zsJwnu+3cszrkmd5BA0uLn5PssVUoPrHpbPH6mhRkw0aqMdy0Z9mVt4Jj
	XL6ZFccdYL4KU9A5azEly3r3irlvqZQpkJSFA234=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f5a27139a-33016b69-78b5-46a0-b45e-cf40f9c00b3d-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 2989c0bc9a53ca95e8b0b22e26446cc028ebc399ab93a0435b0ca051fb8ad4ff
Date: Sat, 5 Mar 2022 12:56:25 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.05-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646484984
