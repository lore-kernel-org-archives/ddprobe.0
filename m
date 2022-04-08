Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F2FC32F48
	for <ddprobe@lists.linux.dev>; Fri,  8 Apr 2022 21:42:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1649454178;
	h=To:Subject:From:Message-Id:Date;
	bh=JRbjlS3zJjzaZ1aIIJpGmh13V2Sgb9t7GnqEBvVFWzw=;
	b=KsSB5muEIJX7Il+p7Yq2n1FNCq2yzFKSS/RD+dG9MLTLAIcA/otNFoUj1siItC0R
	QwyaH689pynccy5aehhUUjH9QkskhS1YJg58J0AWo/e5MmgvpRAl4yQyAUP/cYVVyPz
	Fw+y7F5XIk5ryZBG9+CMqIq/ULc3Oa8gKYhNzIS0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1649454178;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=JRbjlS3zJjzaZ1aIIJpGmh13V2Sgb9t7GnqEBvVFWzw=;
	b=XSGaFLDvmqkQ5LwukvlB/wPVEtNaECdN4e2+jLJbXexVI9lfV1+xGaTtqzWZWdl/
	AxhOkMC2c3TL0P0z/q/M8VcCiGiNYLU82Bphxltq1I5jvIkRUZzL6ewrOKofryDzZj3
	1lz5pGkxYGH5t7WTQtzo9iNtITTe4aWPzSAoM64k=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101800b216022-5e29bc2e-a39f-4d88-be81-97aaee85910c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a528ff0ef1cc39dab318cb82819bbcf1c555228db7a8b1d76d9fe506df495259
Date: Fri, 8 Apr 2022 21:42:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.08-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1649454178
