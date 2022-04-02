Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E5C727A
	for <ddprobe@lists.linux.dev>; Sat,  2 Apr 2022 08:20:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648887658;
	h=To:Subject:From:Message-Id:Date;
	bh=/S5nYIMvc7TMODyjrbua6z7P/kFf4M4vOLpWrKw1vHE=;
	b=jn5DDpImT2krtumoADdxRKnNCx8ds5oI9OfqVpyVLp4pUqE7nMlODMchGJeFXRZp
	+wMGnZ9gVWCkBYIw72AUk3uAw4XYmANLNvzr2seed5SyTXGsXEXASqA6SyFPqys3iCj
	DdQvXJbK9043g5uNwBECl8Gryi+6AYbeu5AuC+YA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648887658;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=/S5nYIMvc7TMODyjrbua6z7P/kFf4M4vOLpWrKw1vHE=;
	b=bZFH3eERxN9/etG1STZ26uwdldrtvv1Q+M33bfY9vMvBvXqYsKTYCrMZWyfBhgoQ
	kyI77izfb4aaLlZUPd9g/eTQ0YatJHXW5my3f/TQPEw/IVgNJD3hK5KYw7v1Ln6VoYC
	aoPJhpS1Bf5L8qiBsSXyt5fGy+fKyZ4YypbGspHk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fe95cf73a-8392d43b-a7bc-4636-899e-0f3f6cea0f20-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 8df185250a8b219bc1b2220bc09e7f3b03dbe7209f9b9a23d4561dc36abea099
Date: Sat, 2 Apr 2022 08:20:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.02-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648887658
