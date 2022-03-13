Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A4AA9A23
	for <ddprobe@lists.linux.dev>; Sun, 13 Mar 2022 08:16:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647159385;
	h=To:Subject:From:Message-Id:Date;
	bh=oQ5y/4KLiW2kGJiw+3mFyJ8ff4qXJWlOWzPGftU1vV0=;
	b=k2hnb91Fd8dIu/BJrwPHmP4Hta064nlINW8LfttGThqsNJmV3gPgzj+ZIo60b+1J
	PQiMqkVSqoBOk6+4ZV8kTjWGJdWEXUWCINF3FGUaEeF53hEOZ/gYdAD408T/v3hM7EN
	e1D5sx6Q++P5VhqvVlmvf8EULfiT7XTGGGsQKiiQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647159385;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=oQ5y/4KLiW2kGJiw+3mFyJ8ff4qXJWlOWzPGftU1vV0=;
	b=ETYgnLA7x4hvByAYD7VvxY9d5OyJZ7fBWqVIITldq+xsN+6l0XU8KIEHddgXQ2rE
	Cxmp9XpEgc0e0TagVyIbQGBTIJerhhXi6Y/UIYCr5yG2/nDzYpXQZNztzrD+OzsLkuO
	kGTDTGzULlZSxkoWXJluHa+qo96Kh19unuNs9D/w=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f82599acb-0f9ae1e5-e485-4456-8d96-edc932b1082d-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: fcb3f35c988f48be0e49aba8b2b65c02df4954f21fa1fb5656badbb461dc23c7
Date: Sun, 13 Mar 2022 08:16:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.13-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647159384
