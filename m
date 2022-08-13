Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 39D7C257D
	for <ddprobe@lists.linux.dev>; Sat, 13 Aug 2022 20:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660422052;
	h=To:Subject:From:Message-Id:Date;
	bh=vad9u/kqyBxpfiFSu1w2m736rDdsMxGvUXBWkMlySHQ=;
	b=NGftyRMmH6DYwCEslWzZdKtjoxe43blQWe35LT5lQpcdCqMYDqJJeuYIApNXk7IF
	b0qwVo/NpbI9Ln+3RO3LfFanSbcJb0oeum6zZBU+Hkrhta8AIXKoO3hNEoJkxn4q0D6
	/asfq/mEJZqfYYmWI5MnyucM1epwhGygvCKDYa6o=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660422052;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=vad9u/kqyBxpfiFSu1w2m736rDdsMxGvUXBWkMlySHQ=;
	b=ky6RXiPokgi9Lj2v+k1Zkv0+p7F/VP7CqxHU2rDdBKZfpOnDNZfW9eLU8iDpO+Q7
	J8YkPfMwadAUuHsQXWMGoBEnZLPiqaekS80HTOxOtv+aoepzplNk7n8KFb4UqNXcr7n
	fBiCcSZhzI9WVoXzNK/GnbI0bhLJ7pbjnS1c/IFY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018298dddabe-0353504c-6f89-43c3-ac67-507cc40eaaee-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: e37be5e3a83725bb580d876a0373b54ea528a9d40a8c0c1937854c969ec1ffba
Date: Sat, 13 Aug 2022 20:20:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.13-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660422052
