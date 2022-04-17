Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B99B22594
	for <ddprobe@lists.linux.dev>; Sun, 17 Apr 2022 19:02:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650222179;
	h=To:Subject:From:Message-Id:Date;
	bh=UvUYYtOrmETi6yP+bXXRr/EnOJGHamopN9DGh8jPaTc=;
	b=Sc/0ZBhICdaXCkRS6HOUfC4vfp84ghEQFJhdn0pmeb72FwIaMCJ9ZfixJpdABeU0
	WzUnxHyBZsczf00yQpuUwITayBx7UxOiJq96mQUAbwOpP3Ald2yvD8GD5ZaSYpMxcBL
	LTU6B6Rfx2HLpOXcFi4gE179g4A6olUJJd4VD6bk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650222179;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=UvUYYtOrmETi6yP+bXXRr/EnOJGHamopN9DGh8jPaTc=;
	b=ErR6Z+8SZs4Q50hmWlZSK/8/pMsKs6GWQmIxyXFWecVSj3QZ3GgAsdxyq3PDQHkm
	KI4lfxK8o1SpVq/a+cR041sCcHz83uMXVUFlOkJb/f/Ogi/Z5UDdRah7uyHBFEN4RyE
	YrtgK2R1qpQmVgUhxpc4aYCwby2D6o3UBCQXHMwc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018038e81fd4-b72c12a7-a69a-4e77-8f84-64c20ce81a9a-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 8064938a3570b0605f24138ab0eaa2589bf0408c4d49a178df0e637f7c6840d6
Date: Sun, 17 Apr 2022 19:02:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.17-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650222178
